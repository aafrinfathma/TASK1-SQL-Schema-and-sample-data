DROP DATABASE IF EXISTS indian_unicorns_analytics;
CREATE DATABASE indian_unicorns_analytics;
USE indian_unicorns_analytics;

-- Startups table
CREATE TABLE startups (
    startup_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(150) NOT NULL,
    short_desc VARCHAR(255),
    founded_date DATE,
    industry_id INT,
    headquarters_location_id INT,
    stage ENUM('seed','growth','unicorn','ipo','acquired'),
    current_status ENUM('active','inactive','acquired'),
    website VARCHAR(255),
    employees INT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP

);

-- Industries table
CREATE TABLE industries (
    industry_id INT AUTO_INCREMENT PRIMARY KEY,
    industry_name VARCHAR(100) NOT NULL,
    sub_industry VARCHAR(100)
);

-- Investors table
CREATE TABLE investors (
    investor_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(150) NOT NULL,
    investor_type ENUM('vc','pe','angel','corporate'),
    country VARCHAR(80),
    founded_year INT,
    website VARCHAR(255)
);

-- FundingRounds table
CREATE TABLE funding_rounds (
    round_id INT AUTO_INCREMENT PRIMARY KEY,
    startup_id INT NOT NULL,
    round_type ENUM('Seed','Series A','Series B','Series C','IPO') NOT NULL,
    raised_amount_usd BIGINT,
    currency VARCHAR(10),
    announced_date DATE,
    post_money_valuation_usd BIGINT,
    lead_investor_id INT,
    notes TEXT,
    FOREIGN KEY (startup_id) REFERENCES startups(startup_id) ON DELETE CASCADE,
    FOREIGN KEY (lead_investor_id) REFERENCES investors(investor_id)
)AUTO INCREMENT=1;

-- Round Participants (junction) – composite PK removes dashed lines
CREATE TABLE round_participants (
    round_id INT NOT NULL,
    investor_id INT NOT NULL,
    amount_usd BIGINT,
    PRIMARY KEY (round_id, investor_id),
    FOREIGN KEY (round_id) REFERENCES funding_rounds(round_id) ON DELETE CASCADE,
    FOREIGN KEY (investor_id) REFERENCES investors(investor_id) ON DELETE CASCADE
);

-- Founders (junction) – composite PK
CREATE TABLE founders (
    founder_id INT AUTO_INCREMENT,
    startup_id INT NOT NULL,
    first_name VARCHAR(80),
    last_name VARCHAR(80),
    role VARCHAR(80),
    share_pct DECIMAL(5,2),
    nationality VARCHAR(80),
    joined_date DATE,
    PRIMARY KEY (founder_id, startup_id),
    FOREIGN KEY (startup_id) REFERENCES startups(startup_id) ON DELETE CASCADE
);

-- Startup Tags (junction) – composite PK
CREATE TABLE product_tags (
    tag_id INT AUTO_INCREMENT PRIMARY KEY,
    tag_name VARCHAR(80) UNIQUE
);

CREATE TABLE startup_tags (
    startup_id INT NOT NULL,
    tag_id INT NOT NULL,
    PRIMARY KEY (startup_id, tag_id),
    FOREIGN KEY (startup_id) REFERENCES startups(startup_id) ON DELETE CASCADE,
    FOREIGN KEY (tag_id) REFERENCES product_tags(tag_id) ON DELETE CASCADE
);

-- Patents (junction-like, tied to startup) – composite PK
CREATE TABLE patents (
    patent_id INT AUTO_INCREMENT,
    startup_id INT NOT NULL,
    title VARCHAR(255),
    filed_date DATE,
    granted_date DATE,
    jurisdiction VARCHAR(80),
    patent_number VARCHAR(100),
    PRIMARY KEY (patent_id, startup_id),
    FOREIGN KEY (startup_id) REFERENCES startups(startup_id) ON DELETE CASCADE
);

-- Exits (1-to-1 with startup) – no dashed line since PK ties to startup_id
CREATE TABLE exits (
    exit_id INT AUTO_INCREMENT,
    startup_id INT NOT NULL,
    exit_type ENUM('IPO','Acquisition','Merger'),
    exit_date DATE,
    exit_value_usd BIGINT,
    acquirer VARCHAR(200),
    notes TEXT,
    PRIMARY KEY (exit_id, startup_id),
    FOREIGN KEY (startup_id) REFERENCES startups(startup_id) ON DELETE CASCADE
);

-- Regulatory Events (composite PK)
CREATE TABLE regulatory_events (
    event_id INT AUTO_INCREMENT,
    startup_id INT NOT NULL,
    event_date DATE,
    event_type VARCHAR(120),
    description TEXT,
    impact ENUM('positive','neutral','negative'),
    PRIMARY KEY (event_id, startup_id),
    FOREIGN KEY (startup_id) REFERENCES startups(startup_id) ON DELETE CASCADE
);

-- Monthly Metrics (composite PK with startup_id)
CREATE TABLE monthly_metrics (
    metric_id INT AUTO_INCREMENT,
    startup_id INT NOT NULL,
    metric_month DATE,
    revenue_usd BIGINT,
    gross_margin_pct DECIMAL(5,2),
    mrr_usd BIGINT,
    active_users BIGINT,
    paying_users BIGINT,
    burn_rate_usd BIGINT,
    cash_on_hand_usd BIGINT,
    PRIMARY KEY (metric_id, startup_id),
    FOREIGN KEY (startup_id) REFERENCES startups(startup_id) ON DELETE CASCADE
);

-- Locations (referenced by startups, no dashed line since not weak)
CREATE TABLE locations (
    location_id INT AUTO_INCREMENT PRIMARY KEY,
    city VARCHAR(100),
    state VARCHAR(100),
    region ENUM('North','South','East','West','Central','International')
);
