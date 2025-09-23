-- Industries
INSERT INTO industries (industry_name, sub_industry) VALUES
('E-commerce', 'Online Retail'),
('EdTech', 'Learning Platforms'),
('FinTech', 'Payments'),
('FoodTech', 'Delivery'),
('HealthTech', 'Telemedicine'),
('SaaS', 'Enterprise Tools'),
('Logistics', 'Last-mile Delivery'),
('Mobility', 'Ride Hailing'),
('Gaming', 'Online Gaming'),
('AI/ML', 'Analytics');

-- Locations
INSERT INTO locations (city, state, region) VALUES
('Bengaluru', 'Karnataka', 'South'),
('Mumbai', 'Maharashtra', 'West'),
('Gurgaon', 'Haryana', 'North'),
('Hyderabad', 'Telangana', 'South'),
('Chennai', 'Tamil Nadu', 'South'),
('Pune', 'Maharashtra', 'West'),
('Delhi', 'Delhi', 'North'),
('Kolkata', 'West Bengal', 'East'),
('Ahmedabad', 'Gujarat', 'West'),
('Singapore', 'NA', 'International');

-- Startups (10 sample unicorns)
INSERT INTO startups (name, short_desc, founded_date, industry_id, headquarters_location_id, stage, current_status, website, employees) VALUES
('Flipkart', 'E-commerce marketplace', '2007-10-15', 1, 1, 'unicorn', 'active', 'https://flipkart.com', 30000),
('BYJUS', 'EdTech learning platform', '2011-01-01', 2, 1, 'unicorn', 'active', 'https://byjus.com', 20000),
('Paytm', 'Digital payments & wallet', '2010-08-01', 3, 2, 'ipo', 'active', 'https://paytm.com', 25000),
('Zomato', 'Online food delivery', '2008-07-01', 4, 3, 'ipo', 'active', 'https://zomato.com', 5000),
('CureFit', 'Health & fitness platform', '2016-04-01', 5, 1, 'growth', 'active', 'https://curefit.com', 7000),
('Freshworks', 'SaaS customer engagement', '2010-10-01', 6, 5, 'ipo', 'active', 'https://freshworks.com', 5000),
('Delhivery', 'Logistics & supply chain', '2011-06-01', 7, 3, 'unicorn', 'active', 'https://delhivery.com', 15000),
('Ola', 'Ride-hailing mobility platform', '2010-12-01', 8, 1, 'unicorn', 'active', 'https://ola.com', 10000),
('Dream11', 'Fantasy sports gaming', '2008-05-01', 9, 2, 'unicorn', 'active', 'https://dream11.com', 2000),
('InMobi', 'Mobile advertising AI/ML', '2007-06-01', 10, 1, 'unicorn', 'active', 'https://inmobi.com', 3000);

-- Investors
INSERT INTO investors (name, investor_type, country, founded_year, website) VALUES
('Sequoia Capital India', 'vc', 'India', 2006, 'https://sequoiacap.com'),
('Accel Partners', 'vc', 'USA', 1983, 'https://accel.com'),
('SoftBank Vision Fund', 'pe', 'Japan', 2017, 'https://softbank.com'),
('Tiger Global', 'vc', 'USA', 2001, 'https://tigerglobal.com'),
('Matrix Partners India', 'vc', 'India', 2006, 'https://matrixpartners.in'),
('Lightspeed Venture Partners', 'vc', 'USA', 2000, 'https://lsvp.com'),
('Nexus Venture Partners', 'vc', 'India', 2006, 'https://nexusvp.com'),
('Ratan Tata', 'angel', 'India', 1937, 'https://tata.com'),
('Infosys Ventures', 'corporate', 'India', 2010, 'https://infosys.com'),
('Blume Ventures', 'vc', 'India', 2010, 'https://blume.vc');

-- Funding Rounds (10)
INSERT INTO funding_rounds (startup_id, round_type, raised_amount_usd, currency, announced_date, post_money_valuation_usd, lead_investor_id, notes) VALUES
(1, 'Series C', 100000000, 'USD', '2013-07-01', 1600000000, 2, 'Growth push in e-commerce'),
(2, 'Series A', 200000000, 'USD', '2016-09-01', 5000000000, 1, 'EdTech expansion globally'),
(3, 'IPO', 2200000000, 'USD', '2021-11-01', 15000000000, 3, 'Public listing on NSE'),
(4, 'IPO', 1200000000, 'USD', '2021-07-01', 10000000000, 4, 'Zomato IPO oversubscribed'),
(5, 'Series C', 150000000, 'USD', '2019-01-01', 700000000, 5, 'Healthcare expansion'),
(6, 'IPO', 1500000000, 'USD', '2021-09-01', 13000000000, 6, 'Freshworks listed on NASDAQ'),
(7, 'Series A', 413000000, 'USD', '2019-05-01', 2000000000, 4, 'Logistics infra boost'),
(8, 'Series B', 500000000, 'USD', '2019-07-01', 6000000000, 3, 'Mobility super app vision'),
(9, 'Series C', 400000000, 'USD', '2020-08-01', 5000000000, 1, 'Fantasy gaming boom'),
(10, 'Series B', 200000000, 'USD', '2011-07-01', 800000000, 2, 'Early AI/ML scaling');

-- Round Participants (20)
INSERT INTO round_participants (round_id, investor_id, amount_usd) VALUES
(1, 1, 40000000),
(1, 2, 30000000),
(1, 4, 30000000),
(2, 1, 120000000),
(2, 3, 80000000),
(3, 3, 1000000000),
(3, 9, 1200000000),
(4, 4, 700000000),
(4, 2, 500000000),
(5, 5, 80000000),
(5, 8, 70000000),
(6, 6, 1000000000),
(6, 3, 500000000),
(7, 4, 250000000),
(7, 1, 163000000),
(8, 3, 400000000),
(8, 2, 100000000),
(9, 1, 200000000),
(9, 10, 200000000),
(10, 2, 200000000);

-- Founders (10)
INSERT INTO founders (founder_id, startup_id, first_name, last_name, role, share_pct, nationality, joined_date) VALUES
(1, 1, 'Sachin', 'Bansal', 'Co-Founder', 15.00, 'Indian', '2007-10-15'),
(2, 1, 'Binny', 'Bansal', 'Co-Founder', 15.00, 'Indian', '2007-10-15'),
(3, 2, 'Byju', 'Raveendran', 'Founder & CEO', 20.00, 'Indian', '2011-01-01'),
(4, 3, 'Vijay', 'Sharma', 'Founder & CEO', 18.00, 'Indian', '2010-08-01'),
(5, 4, 'Deepinder', 'Goyal', 'Founder & CEO', 12.00, 'Indian', '2008-07-01'),
(6, 5, 'Mukesh', 'Bansal', 'Co-Founder', 10.00, 'Indian', '2016-04-01'),
(7, 6, 'Girish', 'Mathrubootham', 'Founder & CEO', 22.00, 'Indian', '2010-10-01'),
(8, 7, 'Sahil', 'Barua', 'Founder & CEO', 15.00, 'Indian', '2011-06-01'),
(9, 8, 'Bhavish', 'Aggarwal', 'Founder & CEO', 20.00, 'Indian', '2010-12-01'),
(10, 9, 'Harsh', 'Jain', 'Co-Founder', 15.00, 'Indian', '2008-05-01');

-- Product Tags
INSERT INTO product_tags (tag_name) VALUES
('AI'), ('Cloud'), ('Blockchain'), ('Marketplace'),
('EdTech'), ('Mobile Payments'), ('Logistics'), ('SaaS'),
('Gaming'), ('HealthTech');

-- Startup Tags (20)
INSERT INTO startup_tags (startup_id, tag_id) VALUES
(1, 4), (1, 2),
(2, 5), (2, 1),
(3, 6), (3, 2),
(4, 4), (4, 9),
(5, 10), (5, 1),
(6, 8), (6, 2),
(7, 7), (7, 2),
(8, 4), (8, 1),
(9, 9), (9, 2),
(10, 1), (10, 2);

-- Patents (10)
INSERT INTO patents (patent_id, startup_id, title, filed_date, granted_date, jurisdiction, patent_number) VALUES
(1, 6, 'Customer Support AI Bot', '2018-06-01', '2020-01-01', 'US', 'US987654'),
(2, 10, 'Ad Optimization Algorithm', '2012-02-01', '2014-06-01', 'IN', 'IN543210'),
(3, 3, 'Mobile Payment QR Tech', '2014-05-01', '2016-08-01', 'IN', 'IN123456'),
(4, 8, 'Ride Allocation Engine', '2013-03-01', '2015-09-01', 'US', 'US654321'),
(5, 2, 'Interactive Learning Method', '2015-01-01', '2017-07-01', 'IN', 'IN678901'),
(6, 4, 'Restaurant Partner Analytics', '2012-04-01', '2014-10-01', 'IN', 'IN456789'),
(7, 7, 'Logistics Routing System', '2016-06-01', '2018-11-01', 'IN', 'IN111222'),
(8, 1, 'Personalized E-commerce Engine', '2010-07-01', '2012-12-01', 'US', 'US333444'),
(9, 5, 'AI Wellness Tracking', '2017-09-01', '2019-02-01', 'IN', 'IN222333'),
(10, 9, 'Fantasy Game Engine', '2011-11-01', '2013-06-01', 'IN', 'IN444555');

-- Exits (3 IPOs)
INSERT INTO exits (exit_id, startup_id, exit_type, exit_date, exit_value_usd, acquirer, notes) VALUES
(1, 3, 'IPO', '2021-11-01', 15000000000, NULL, 'Listed on NSE/BSE'),
(2, 4, 'IPO', '2021-07-01', 10000000000, NULL, 'Successful public listing'),
(3, 6, 'IPO', '2021-09-01', 13000000000, NULL, 'NASDAQ IPO');

-- Regulatory Events (5)
INSERT INTO regulatory_events (event_id, startup_id, event_date, event_type, description, impact) VALUES
(1, 3, '2018-11-01', 'RBI Regulation', 'Wallet KYC compliance', 'negative'),
(2, 4, '2019-07-01', 'FSSAI Norms', 'Food hygiene regulations update', 'neutral'),
(3, 2, '2021-03-01', 'EdTech Guidelines', 'Govt. restrictions on student data', 'negative'),
(4, 7, '2020-05-01', 'Logistics Rules', 'E-way bill relaxation', 'positive'),
(5, 8, '2021-09-01', 'Ride Sharing Regulation', 'New ride caps in Delhi NCR', 'negative');

-- Monthly Metrics (10 samples)
INSERT INTO monthly_metrics (metric_id, startup_id, metric_month, revenue_usd, gross_margin_pct, mrr_usd, active_users, paying_users, burn_rate_usd, cash_on_hand_usd) VALUES
(1, 1, '2022-01-01', 300000000, 25.5, 250000000, 50000000, 2000000, 50000000, 2000000000),
(2, 2, '2022-01-01', 250000000, 45.2, 200000000, 35000000, 1500000, 40000000, 1500000000),
(3, 3, '2022-01-01', 500000000, 30.0, 450000000, 70000000, 3000000, 70000000, 3000000000),
(4, 4, '2022-01-01', 200000000, 22.0, 180000000, 40000000, 1700000, 60000000, 1000000000),
(5, 5, '2022-01-01', 80000000, 28.0, 70000000, 10000000, 400000, 25000000, 500000000),
(6, 6, '2022-01-01', 350000000, 60.0, 300000000, 20000000, 800000, 70000000, 2500000000),
(7, 7, '2022-01-01', 150000000, 35.0, 120000000, 25000000, 900000, 20000000, 900000000),
(8, 8, '2022-01-01', 400000000, 25.0, 350000000, 60000000, 2500000, 80000000, 2800000000),
(9, 9, '2022-01-01', 120000000, 50.0, 100000000, 15000000, 500000, 15000000, 600000000),
(10, 10, '2022-01-01', 90000000, 40.0, 75000000, 12000000, 300000, 18000000, 700000000);
