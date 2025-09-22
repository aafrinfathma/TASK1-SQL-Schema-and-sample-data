-- Industries
INSERT INTO industries (industry_name, sub_industry) VALUES
('Fintech','Payments'),
('Fintech','Lending'),
('EdTech','K12'),
('EdTech','Upskilling'),
('HealthTech','Diagnostics'),
('HealthTech','Telemedicine'),
('SaaS','B2B'),
('E-commerce','Vertical Marketplaces'),
('Agritech','Input Supply'),
('ClimateTech','Clean Energy'),
('AI','Generative AI'),
('Logistics','Last Mile');

-- Locations
INSERT INTO locations (city, state, region) VALUES
('Bengaluru','Karnataka','South'),
('Mumbai','Maharashtra','West'),
('Delhi','Delhi','North'),
('Gurgaon','Haryana','North'),
('Hyderabad','Telangana','South'),
('Chennai','Tamil Nadu','South');

-- Product tags (tech/feature)
INSERT INTO product_tags (tag_name) VALUES
('AI'),('Machine Learning'),('SaaS'),('B2B'),('Marketplaces'),('Blockchain'),('RegTech'),('InsurTech'),('IoT'),('Telehealth'),('Subscription');

-- Investors
INSERT INTO investors (name, investor_type, country, founded_year, website) VALUES
('CapitalWave Ventures','vc','India',2010,'https://capitalwave.vc'),
('Horizon Growth Partners','vc','USA',2005,'https://hgp.com'),
('IndAngel Network','angel','India',2016,'https://indangel.net'),
('Global Frontier Fund','fund_of_funds','Singapore',2014,'https://gff.sg'),
('CorpConnect Capital','corporate','India',2008,'https://corpconnect.cap');

-- Startups (25 diverse startups)
INSERT INTO startups (name, short_desc, founded_date, industry_id, headquarters_location_id, stage, current_status, website, employees)
VALUES
('PayFlux','Digital payments & merchant services', '2016-05-10', 1, 1, 'unicorn','active','https://payflux.example', 1200),
('LendSmart','SME lending platform', '2018-03-20', 2, 2, 'growth','active','https://lendsmart.example', 420),
('Tutorly','K12 digital tutoring marketplace', '2015-07-01', 3, 1, 'unicorn','active','https://tutorly.example', 900),
('SkillForge','Upskilling & bootcamps SaaS', '2017-11-12', 4, 1, 'series_c','active','https://skillforge.example', 350),
('MediQuick','Diagnostic lab network & telemedicine', '2014-02-25', 5, 5, 'unicorn','active','https://mediquick.example', 2500),
('HealthBridge','Telehealth platform for chronic care', '2019-06-14', 6, 5, 'series_b','active','https://healthbridge.example', 220),
('EnterpriseOS','B2B SaaS ERP for mid-market', '2013-09-09', 7, 1, 'unicorn','active','https://enterpriseos.example', 1800),
('FarmLink','Marketplace for farm inputs & produce', '2016-01-18', 9, 6, 'series_c','active','https://farmlink.example', 540),
('EcoStor','Clean energy storage solutions', '2012-12-01', 10, 1, 'growth','active','https://ecostor.example', 600),
('GeneraAI','Generative AI tools for content', '2020-02-20', 11, 1, 'series_b','active','https://generaai.example', 140),
('QuickShip','Last-mile logistics & fulfillment', '2015-05-05', 12, 2, 'unicorn','active','https://quickship.example', 2600),
('PharmaDirect','E-pharmacy & D2C health products', '2017-04-01', 5, 2, 'series_c','active','https://pharmadirect.example', 800),
('EduLab','SaaS for online universities', '2018-08-15', 7, 1, 'series_b','active','https://edulab.example', 240),
('InsureNow','Embedded insurance platform', '2016-10-02', 1, 2, 'series_d','active','https://insurenow.example', 360),
('MobilityX','EV fleet & charging network', '2014-03-03', 10, 1, 'growth','active','https://mobilityx.example', 720),
('BioSense','Biotech diagnostics startup', '2011-06-21', 5, 5, 'unicorn','active','https://biosense.example', 950),
('RetailSquare','Vertical e-commerce (home décor)', '2019-09-09', 8, 2, 'series_b','active','https://retailsquare.example', 180),
('DataMine','Data analytics platform for retail', '2017-02-14', 7, 1, 'series_c','active','https://datamine.example', 400),
('AgroAI','Precision ag & IoT sensors', '2016-07-30', 9, 6, 'series_c','active','https://agroai.example', 280),
('GreenHomes','ClimateTech - energy efficient homes', '2013-11-11', 10, 6, 'growth','active','https://greenhomes.example', 210),
('TeleDent','Tele-dentistry & dental clinics network', '2018-12-05', 6, 5, 'series_a','active','https://teledent.example', 85),
('LegalEase','RegTech contract automation SaaS', '2019-01-01', 7, 3, 'series_b','active','https://legalease.example', 110),
('CryptoXchange','Blockchain-based exchange', '2017-05-17', 1, 2, 'series_d','active','https://cryptoxchange.example', 620),
('NanoChem','Advanced materials for batteries', '2012-10-10', 10, 1, 'growth','active','https://nanochem.example', 390),
('CareGiver','Home healthcare & elderly care platform', '2018-03-03', 6, 5, 'series_b','active','https://caregiver.example', 160);

-- Founders (one or two founders per startup)
INSERT INTO founders (startup_id, first_name, last_name, role, share_pct, joined_date) VALUES
(1,'Anil','Verma','CEO',25.00,'2016-05-10'),
(1,'Rhea','Das','CTO',15.00,'2016-05-10'),
(2,'Priya','Menon','Founder',30.00,'2018-03-20'),
(3,'Vikram','Shah','CEO',20.00,'2015-07-01'),
(4,'Sameer','Khan','CEO',22.00,'2017-11-12'),
(5,'Dr. Neeta','Rao','Founder',18.00,'2014-02-25'),
(6,'Arjun','Gupta','CEO',28.00,'2019-06-14'),
(7,'Meera','Iyer','CEO',24.00,'2013-09-09'),
(8,'Ramesh','Patel','CEO',30.00,'2016-01-18'),
(9,'Sonal','Bhatia','CEO',26.00,'2012-12-01'),
(10,'Karan','Singh','CEO',20.00,'2020-02-20'),
(11,'Neha','Kapoor','COO',18.00,'2015-05-05'),
(12,'Amit','Chopra','Founder',22.00,'2017-04-01'),
(13,'Leena','Roy','CEO',16.00,'2018-08-15'),
(14,'Vivek','Rao','CEO',21.00,'2016-10-02'),
(15,'Ritu','Agarwal','CEO',27.00,'2014-03-03'),
(16,'Suresh','Bose','CEO',19.00,'2011-06-21'),
(17,'Dipti','Sen','CEO',24.00,'2019-09-09'),
(18,'Raghav','Malhotra','CEO',20.00,'2017-02-14'),
(19,'Alok','Desai','CEO',22.00,'2016-07-30'),
(20,'Maya','Ibrahim','CEO',20.00,'2013-11-11'),
(21,'Rohit','Nair','CEO',12.00,'2018-12-05'),
(22,'Kabir','Sharma','CEO',15.00,'2019-01-01'),
(23,'Siddharth','Verma','CEO',18.00,'2017-05-17'),
(24,'Isha','Bose','CEO',22.00,'2012-10-10'),
(25,'Pooja','Khan','CEO',16.00,'2018-03-03');

-- Tagging startups with product tags (many-to-many)
INSERT INTO startup_tags (startup_id, tag_id) VALUES
(1,1),(1,5),(1,3),   -- PayFlux: AI + Marketplaces + SaaS
(2,3),(2,8),         -- LendSmart: SaaS + InsurTech
(3,5),(3,11),        -- Tutorly: Marketplaces + Subscription
(4,3),(4,11),(4,2),
(5,10),(5,9),
(6,10),(6,1),
(7,3),(7,4),
(8,5),(8,9),
(9,10),(9,1),
(10,1),(10,3),
(11,5),(11,4),
(12,11),(12,5),
(13,3),
(14,8),(14,3),
(15,10),(15,9),
(16,5),(16,10),
(17,5),(17,3),
(18,2),(18,3),
(19,9),(19,1),
(20,10),(20,9),
(21,10),(21,5),
(22,7),(22,3),
(23,6),(23,1),
(24,9),(24,10),
(25,10),(25,11);

-- Funding rounds (select set across years)
INSERT INTO funding_rounds (startup_id, round_type, raised_amount_usd, announced_date, post_money_valuation_usd, lead_investor_id, notes)
VALUES
(1,'series_c', 60000000, '2018-11-15', 350000000, 1, 'Scaling merchant network'),
(1,'growth', 150000000, '2021-06-10', 1200000000, 2, 'Global expansion'),
(2,'series_a', 15000000, '2019-04-20', 60000000, 1, 'SME product lead'),
(2,'series_b', 40000000, '2021-02-10', 220000000, 5, 'Geographic expansion'),
(3,'series_d', 120000000, '2020-09-05', 950000000, 2, 'Aggressive market share'),
(4,'series_c', 30000000, '2020-01-18', 150000000, 1, 'Enterprise product growth'),
(5,'growth', 200000000, '2019-10-01', 1500000000, 2, 'Labs & acquisitions'),
(6,'series_b', 25000000, '2021-07-01', 120000000, 5, 'Chronic care modules'),
(7,'series_e', 180000000, '2018-03-22', 1100000000, 2, 'Internationalization'),
(8,'series_c', 35000000, '2019-11-11', 180000000, 1, 'Marketplace liquidity'),
(9,'growth', 60000000, '2020-06-06', 400000000, 5, 'Manufacturing expansion'),
(10,'series_b', 20000000, '2021-09-09', 120000000, 2, 'AI productization'),
(11,'series_f', 300000000, '2020-08-20', 2200000000, 2, 'Nationwide fulfillment dominance'),
(12,'series_c', 45000000, '2021-03-03', 230000000, 1, 'Warehouse & logistics'),
(13,'series_b', 20000000, '2020-12-01', 110000000, 1, 'University partnerships'),
(14,'series_d', 80000000, '2021-05-05', 600000000, 2, 'Embedded insurance deals'),
(15,'growth', 50000000, '2019-01-20', 320000000, 5, 'Fleet growth'),
(16,'series_e', 250000000, '2017-08-08', 1000000000, 2, 'Global partnerships'),
(17,'series_b', 12000000, '2020-04-10', 70000000, 1, 'Customer acquisition'),
(18,'series_c', 45000000, '2021-02-22', 260000000, 5, 'Analytics platform scale'),
(19,'series_c', 40000000, '2019-07-07', 200000000, 1, 'Sensor manufacturing'),
(20,'growth', 35000000, '2018-10-10', 160000000, 5, 'Green retrofit projects'),
(21,'series_a', 6000000, '2020-11-11', 25000000, 1, 'Clinic partnerships'),
(22,'series_b', 22000000, '2021-04-04', 120000000, 5, 'Regulatory product dev'),
(23,'series_d', 100000000, '2018-09-09', 700000000, 2, 'Crypto scaling and security'),
(24,'growth', 45000000, '2019-06-06', 260000000, 1, 'Materials scaling'),
(25,'series_b', 18000000, '2021-06-30', 90000000, 5, 'Homecare expansion');

-- Round participants (toy distribution)
INSERT INTO round_participants (round_id, investor_id, amount_usd) VALUES
(1,1,30000000),(1,5,30000000),
(2,2,150000000),
(3,1,9000000),(3,3,6000000),
(4,5,40000000),
(5,2,80000000),(5,4,40000000),(5,1,20000000),
(6,1,30000000),
(7,2,100000000),(7,4,100000000),
(8,5,25000000),
(9,2,180000000),
(10,1,20000000),
(11,2,200000000),(11,4,100000000),
(12,1,45000000),
(13,1,20000000),
(14,2,60000000),(14,5,20000000),
(15,5,50000000),
(16,2,250000000),
(17,1,12000000),
(18,5,45000000),
(19,1,40000000),
(20,5,35000000),
(21,1,6000000),
(22,5,22000000),
(23,2,100000000),(23,3,0),
(24,1,45000000),
(25,5,18000000);

-- Exits (a couple of acquisitions / IPO)
INSERT INTO exits (startup_id, exit_type, exit_date, exit_value_usd, acquirer, notes) VALUES
(16,'ipo','2018-11-01',1200000000,'NYSE:EnterpriseBio','IPO raised significant capital'),
(11,'acquisition','2022-05-15',800000000,'GlobalLogistics Inc','Strategic acquisition to expand last-mile');

-- Monthly metrics for a subset (useful for growth trend analysis) - only sample months to keep script compact
INSERT INTO monthly_metrics (startup_id, metric_month, revenue_usd, mrr_usd, active_users, paying_users, gross_margin_pct, burn_rate_usd, cash_on_hand_usd)
VALUES
(1,'2019-01-01', 4000000, 300000, 500000, 15000, 45.00, 250000, 5000000),
(1,'2020-01-01', 8000000, 650000, 1200000, 40000, 50.00, 450000, 8000000),
(1,'2021-01-01', 18000000, 1500000, 3000000, 120000, 55.00, 750000, 14000000),
(3,'2018-01-01', 2000000, 180000, 250000, 22000, 62.00, 120000, 2600000),
(3,'2019-01-01', 4500000, 400000, 600000, 50000, 60.00, 250000, 5200000),
(5,'2018-01-01', 7000000, NULL, 150000, 30000, 48.00, 400000, 7000000),
(11,'2019-01-01', 12000000, NULL, 2000000, 60000, 35.00, 1500000, 9000000),
(16,'2016-01-01', 3000000, NULL, 350000, 60000, 50.00, 400000, 6000000),
(10,'2020-01-01', 500000, 45000, 50000, 5000, 40.00, 60000, 350000),
(9,'2019-01-01', 2200000, NULL, NULL, NULL, 30.00, 200000, 1200000),
(2,'2019-01-01', 350000, 30000, 40000, 2000, 25.00, 50000, 180000);

-- Patents (toy)
INSERT INTO patents (startup_id, patent_title, filed_date, granted_date, jurisdiction, patent_number)
VALUES
(9,'Advanced battery thermal management','2015-06-01','2018-04-10','India','IN2015001234'),
(24,'High density electrode material','2013-03-03','2016-09-09','India','IN2013009876');

-- Regulatory events (toy)
INSERT INTO regulatory_events (startup_id, event_date, event_type, description, impact)
VALUES
(22,'2020-08-01','Regulatory approval','Received compliance approval for KYC automation','low'),
(12,'2020-05-01','Licensing','Received pharmacy distribution license','medium');

-- =========================
-- Analytical Views (convenience)
-- =========================

-- 1) View: Total funding by industry per year
CREATE OR REPLACE VIEW v_industry_funding_yearly AS
SELECT i.industry_name,
       YEAR(fr.announced_date) AS year,
       SUM(fr.raised_amount_usd) AS total_raised_usd,
       COUNT(DISTINCT fr.startup_id) AS startups_funded
FROM funding_rounds fr
JOIN startups s ON fr.startup_id = s.startup_id
JOIN industries i ON s.industry_id = i.industry_id
GROUP BY i.industry_name, YEAR(fr.announced_date);

-- 2) View: Top investors by total invested
CREATE OR REPLACE VIEW v_investor_commitment AS
SELECT inv.investor_id, inv.name,
       SUM(rp.amount_usd) AS total_committed_usd,
       COUNT(DISTINCT rp.round_id) AS rounds_participated
FROM round_participants rp
JOIN investors inv ON rp.investor_id = inv.investor_id
GROUP BY inv.investor_id, inv.name
ORDER BY total_committed_usd DESC;

-- 3) View: Startup valuation trajectory (latest valuation)
CREATE OR REPLACE VIEW v_startup_latest_valuation AS
SELECT s.startup_id, s.name,
       MAX(fr.announced_date) AS last_round_date,
       SUBSTRING_INDEX(GROUP_CONCAT(fr.post_money_valuation_usd ORDER BY fr.announced_date DESC SEPARATOR ','),',',1) + 0 AS latest_valuation_usd
FROM startups s
LEFT JOIN funding_rounds fr ON s.startup_id = fr.startup_id
GROUP BY s.startup_id, s.name;