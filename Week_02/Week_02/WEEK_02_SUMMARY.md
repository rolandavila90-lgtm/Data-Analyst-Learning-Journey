# Week 2: JOINs & Multiple Tables

## 📚 Concepts I Learned
- LEFT JOIN (connecting tables)
- Table aliasing (AS keyword)
- Aggregate functions with JOINs
- NULL handling
- LIMIT for top N results

---

## 🎯 Challenge 1: High-Paying Remote Partners

**Business Question:** Which companies pay the most for remote Data Analysts?

**What I did:**
1. Connected job_postings_fact with company_dim using LEFT JOIN
2. Used aliases: `jobs` and `companies`
3. Filtered for "Data Analyst" role
4. Kept only remote positions
5. Removed jobs with missing salary
6. Grouped by company
7. Calculated average salary
8. Sorted highest to lowest
9. Showed top 10 results

**What I found:**
- Top companies pay $170k - $650k
- Meta leads at $336k
- Almost all top 10 only posted 1 job (rare positions!)
- **Learning:** High salary can mean hard to find

**Files:**
- Query: `02_High_Paying_Remote_Partner_Analysis.sql`
- Results: `02_result.png`

---

## ⏱️ Time Spent
- ~4-5 hours on this challenge
