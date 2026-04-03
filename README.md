# 📊 Data-Analyst-Learning-Journey

> A BSOA student documenting the path to becoming a Data Analyst — one query at a time.

---

## 👤 About Me
- 🎓 BSOA Student with a focus on Data Analytics
- 📚 Currently learning SQL through Luke Barousse's course
- 🛠️ Tools: SQLiteViz | Dataset: Job Postings Data
- 🎯 Goal: Land a Data Analyst role

---

## 📁 Repository Structure

| File | Description |
|------|-------------|
| `*.sql` | Raw SQL queries with task brief in comments |
| `*.md` | Full breakdown — logic, lessons, and reflection |
| `screenshots/` | Query result screenshots |

---

## 📌 Challenges Log

| Day | Challenge | Topics Covered |
|-----|-----------|----------------|
| Day 1 | On-Site Engineering Markets Report | GROUP BY, HAVING, LIKE, COUNT DISTINCT, Manual AVG |
| Day 2 | High-Paying Remote Partner Analysis ("Gold Standard") | LEFT JOIN, Table Aliasing, Clause Order of Execution, AVG() |

---

## 📸 Project Showcase & Insights

### Day 1: Engineering Markets
*Filtering and grouping on-site roles to find market trends.*
![Day 1 Result](Day1_result_screenshots.png)

**💡 The Data Story (Insights):**
* **High Volume vs. Niche Markets:** The United States dominates the market in sheer volume, offering hundreds of highly-paid, on-site Senior Data Engineer and Machine Learning roles averaging over $150,000 across hundreds of companies. 
* **The Outliers:** Interestingly, the highest average salary appeared in the Bahamas ($219k+), but this was driven by a single company posting 8 roles. This indicates that while niche international markets can offer extreme compensation, the US remains the most stable and expansive market for on-site engineering talent.

### Day 2: The "Remote Elite" Employers
*Connecting Fact and Dimension tables to identify the highest-paying companies for remote Data Analysts.*
![Day 2 Result](Day2_result_screenshots.png)

**💡 The Data Story (Insights):**
* **Startups Competing with Giants:** The highest-paying remote Data Analyst roles aren't exclusively found at traditional FAANG companies. While industry giants like Meta ($336k) and AT&T ($255k) offer massive compensation, specialized tech platforms and financial services (like Mantys and SmartAsset) are fiercely competing for elite remote talent.
* **High Pay, Low Volume:** Almost all of the top 10 highest-paying companies only had a single job posting available, indicating that these ultra-premium remote positions ($170k - $650k) are highly exclusive and rarely open.

---

## 🧠 SQL Concepts Covered So Far
- SELECT, FROM, WHERE
- AND / OR filtering
- LIKE pattern matching
- ORDER BY ASC / DESC
- GROUP BY
- HAVING
- COUNT, COUNT DISTINCT
- Manual AVG calculation (SUM / COUNT)
- Modulo operator (% 2 = 1)
- **LEFT JOIN (Connecting Fact and Dimension tables)**
- **Table Aliasing (e.g., `job_postings_fact AS jobs`)**
- **Aggregate Functions (AVG, COUNT with Joins)**
