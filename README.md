# 🦄 Indian Unicorn Startup Dataset & Analysis

This project provides a **highly-structured SQL schema** and **ER diagram** for analyzing Indian unicorn startups, their funding trends, industries, and investors.  
It is designed to help **investors, researchers, and analysts** identify **hot industries, active investors, and growth trends** in the Indian startup ecosystem.  

---

## 📌 Features
- Well-structured **relational schema** with key entities:
  - **Startups** (unicorn companies, valuations, HQ locations, status)
  - **Industries** (sectors like fintech, edtech, e-commerce, SaaS, etc.)
  - **Investors** (VCs, angel investors, PE firms, corporate investors)
  - **Funding Rounds** (round type, amount, date)
  - **Associations** (many-to-many mappings for startups ↔ industries and startups ↔ investors)
- Normalization
  - ** achieved 3NF Normalization**
  - eliminated partial and transitional depedencies
  - ensured non-key attributes are directly linked to the primary key
- Integrity Constraints
  - Foreign Keys,Unique,Check,Cascade

- **ER Diagram** included for quick visualization of relationships.
- Designed for **advanced queries** to extract insights on valuation growth, funding activity, and market trends.

---

## 🗂️ Database Schema

### Entities & Relationships
- **Startups** ↔ **FundingRounds**: One-to-Many  
- **Startups** ↔ **Industries**: Many-to-Many  
- **Startups** ↔ **Investors**: Many-to-Many (via Funding Rounds)  
- **Investors** ↔ **FundingRounds**: Many-to-Many  

The schema supports:
- Tracking **valuation growth** across industries.
- Identifying **most active investors** in unicorn funding.
- Discovering **emerging sectors** by investment inflows.

---

## 🚀 Example Use Cases
Here are some example questions this dataset can help answer:
1. **Which industries have the highest unicorn valuations?**
2. **Who are the top 10 most active investors in Indian unicorns?**
3. **Which cities are emerging hubs for unicorns?**
4. **What funding rounds (Series A, B, C, etc.) drive the biggest valuation jumps?**
5. **Which startups received the highest single-round funding?**

---

## 💻 Getting Started

### 1. Clone the Repository
```bash
git clone https://github.com/yourusername/indian-unicorns-analysis.git
cd indian-unicorns-analysis
2. Load the SQL Schema
Run the schema in MySQL:

sql
Copy code
SOURCE schema.sql;
3. Load Sample Data (optional)
sql
Copy code
SOURCE sample_data.sql;
4. Run Analytical Queries
Examples:

sql
Copy code
-- Top 5 industries by total unicorn valuation
SELECT i.name, SUM(s.valuation_usd_billion) AS total_valuation
FROM Startups s
JOIN StartupIndustry si ON s.startup_id = si.startup_id
JOIN Industries i ON si.industry_id = i.industry_id
GROUP BY i.name
ORDER BY total_valuation DESC
LIMIT 5; 
