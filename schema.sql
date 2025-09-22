-- DROP if exists (helpful during development)
DROP DATABASE IF EXISTS indian_unicorns_analytics;
CREATE DATABASE indian_unicorns_analytics;
USE indian_unicorns_analytics;

-- =========================
-- Core tables
-- =========================

-- INDUSTRIES: normalized list of industries and sub-industries
CREATE TABLE industries (
  industry_id INT AUTO_INCREMENT PRIMARY KEY,
  industry_name VARCHAR(100) NOT NULL,
  sub_industry VARCHAR(100),
  UNIQUE(industry_name, sub_industry)
);

-- LOCATIONS: cities / states / regions
CREATE TABLE locations (
  location_id INT AUTO_INCREMENT PRIMARY KEY,
  city VARCHAR(100) NOT NULL,
  state VARCHAR(100) NOT NULL,
  region ENUM('North','South','East','West','Central','Northeast') NULL,
  UNIQUE(city, state)
);

-- STARTUPS: main entity (unicorns & high-growth startups)
CREATE TABLE startups (
  startup_id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(150) NOT NULL,
  short_desc VARCHAR(255),
  founded_date DATE,
  industry_id INT NOT NULL,
  headquarters_location_id INT,
  stage ENUM('seed','series_a','series_b','series_c','growth','unicorn','public','acquired') DEFAULT 'seed',
  current_status ENUM('active','acquired','public','closed') DEFAULT 'active',
  website VARCHAR(255),
  employees INT DEFAULT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (industry_id) REFERENCES industries(industry_id) ON DELETE RESTRICT,
  FOREIGN KEY (headquarters_location_id) REFERENCES locations(location_id) ON DELETE SET NULL
);

-- FOUNDERS
CREATE TABLE founders (
  founder_id INT AUTO_INCREMENT PRIMARY KEY,
  startup_id INT NOT NULL,
  first_name VARCHAR(80) NOT NULL,
  last_name VARCHAR(80),
  role VARCHAR(80) DEFAULT 'cofounder',
  share_pct DECIMAL(5,2) DEFAULT NULL,
  nationality VARCHAR(80) DEFAULT 'Indian',
  joined_date DATE DEFAULT NULL,
  FOREIGN KEY (startup_id) REFERENCES startups(startup_id) ON DELETE CASCADE
);

-- INVESTORS (VCs, corporate, angels)
CREATE TABLE investors (
  investor_id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(150) NOT NULL,
  investor_type ENUM('vc','angel','corporate','sovereign','fund_of_funds','family_office') DEFAULT 'vc',
  country VARCHAR(80) DEFAULT 'India',
  founded_year INT NULL,
  website VARCHAR(255)
);

-- FUNDING ROUNDS (captures each round, amount, valuation)
CREATE TABLE funding_rounds (
  round_id INT AUTO_INCREMENT PRIMARY KEY,
  startup_id INT NOT NULL,
  round_type ENUM('pre_seed','seed','angel','series_a','series_b','series_c','series_d','growth','ipo') NOT NULL,
  raised_amount_usd BIGINT NOT NULL,         -- store amounts as integer USD for analysis
  currency VARCHAR(10) DEFAULT 'USD',        -- keep for realism
  announced_date DATE NOT NULL,
  post_money_valuation_usd BIGINT DEFAULT NULL,
  lead_investor_id INT DEFAULT NULL,
  notes TEXT,
  FOREIGN KEY (startup_id) REFERENCES startups(startup_id) ON DELETE CASCADE,
  FOREIGN KEY (lead_investor_id) REFERENCES investors(investor_id) ON DELETE SET NULL,
  INDEX (startup_id),
  INDEX (announced_date),
  INDEX (round_type)
);

-- PARTICIPANTS: many-to-many between funding_rounds and investors (other investors in same round)
CREATE TABLE round_participants (
  round_id INT NOT NULL,
  investor_id INT NOT NULL,
  amount_usd BIGINT,
  PRIMARY KEY (round_id, investor_id),
  FOREIGN KEY (round_id) REFERENCES funding_rounds(round_id) ON DELETE CASCADE,
  FOREIGN KEY (investor_id) REFERENCES investors(investor_id) ON DELETE CASCADE
);

-- EXITS table (acquisitions, IPOs)
CREATE TABLE exits (
  exit_id INT AUTO_INCREMENT PRIMARY KEY,
  startup_id INT NOT NULL,
  exit_type ENUM('acquisition','ipo') NOT NULL,
  exit_date DATE NOT NULL,
  exit_value_usd BIGINT NOT NULL,
  acquirer VARCHAR(200),
  notes TEXT,
  FOREIGN KEY (startup_id) REFERENCES startups(startup_id) ON DELETE CASCADE
);

-- MONTHLY_METRICS: time series metrics for startups (for growth trending)
CREATE TABLE monthly_metrics (
  metric_id INT AUTO_INCREMENT PRIMARY KEY,
  startup_id INT NOT NULL,
  metric_month DATE NOT NULL,                -- use first day of month
  revenue_usd BIGINT DEFAULT NULL,
  gross_margin_pct DECIMAL(5,2) DEFAULT NULL,
  mrr_usd BIGINT DEFAULT NULL,
  active_users BIGINT DEFAULT NULL,
  paying_users BIGINT DEFAULT NULL,
  burn_rate_usd BIGINT DEFAULT NULL,
  cash_on_hand_usd BIGINT DEFAULT NULL,
  FOREIGN KEY (startup_id) REFERENCES startups(startup_id) ON DELETE CASCADE,
  UNIQUE (startup_id, metric_month),
  INDEX (metric_month),
  INDEX (startup_id)
);

-- PRODUCT_TAGS: features/tech tags for startups (AI, blockchain, SaaS)
CREATE TABLE product_tags (
  tag_id INT AUTO_INCREMENT PRIMARY KEY,
  tag_name VARCHAR(80) UNIQUE NOT NULL
);

-- STARTUP_TAGS many-to-many
CREATE TABLE startup_tags (
  startup_id INT NOT NULL,
  tag_id INT NOT NULL,
  PRIMARY KEY (startup_id, tag_id),
  FOREIGN KEY (startup_id) REFERENCES startups(startup_id) ON DELETE CASCADE,
  FOREIGN KEY (tag_id) REFERENCES product_tags(tag_id) ON DELETE CASCADE
);

-- PATENTS table
CREATE TABLE patents (
  patent_id INT AUTO_INCREMENT PRIMARY KEY,
  startup_id INT NOT NULL,
  patent_title VARCHAR(255) NOT NULL,
  filed_date DATE,
  granted_date DATE,
  jurisdiction VARCHAR(80),
  patent_number VARCHAR(100),
  FOREIGN KEY (startup_id) REFERENCES startups(startup_id) ON DELETE CASCADE
);

-- REGULATORY_EVENTS (e.g., licenses, regulatory hurdles)
CREATE TABLE regulatory_events (
  event_id INT AUTO_INCREMENT PRIMARY KEY,
  startup_id INT NOT NULL,
  event_date DATE,
  event_type VARCHAR(120),
  description TEXT,
  impact ENUM('low','medium','high') DEFAULT 'low',
  FOREIGN KEY (startup_id) REFERENCES startups(startup_id) ON DELETE CASCADE
);

-- =========================
-- Indexes to help analytics
-- =========================
CREATE INDEX idx_startups_industry ON startups(industry_id);
CREATE INDEX idx_startups_location ON startups(headquarters_location_id);
CREATE INDEX idx_rounds_date_amount ON funding_rounds(announced_date, raised_amount_usd);
CREATE INDEX idx_metrics_month ON monthly_metrics(metric_month);