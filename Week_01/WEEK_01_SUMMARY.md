# Week 1: SQL Fundamentals & Grouping

## 📚 Concepts I Learned
- GROUP BY & HAVING clauses
- COUNT, COUNT DISTINCT, SUM
- Manual AVG (SUM/COUNT) calculation
- LIKE pattern matching
- ORDER BY DESC

---

## 🎯 Challenge 1: On-Site Engineering Markets

**Business Question:** Which engineering roles pay the most on-site?

**What I did:**
1. Filtered for "Engineer" in job title
2. Kept only on-site jobs (not remote)
3. Removed jobs with missing salary
4. Grouped by Country and Job Category
5. Showed only groups with 5+ jobs AND avg > $100k
6. Sorted by highest salary first

**What I found:**
- USA has the most high-paying engineering jobs
- Bahamas shows highest salary ($219k) but only 8 jobs from 1 company
- **Learning:** High salary ≠ good market (need volume too!)

**Files:**
- Query: `01_OnSite_Engineering_Markets.sql`
- Results: `01_result.png`

---

## 💡 Mistakes I Made

### Mistake 1: WHERE vs HAVING
❌ Wrong: `WHERE SUM(salary) > 100000`
✅ Right: `HAVING SUM(salary) > 100000`
**Why:** Aggregates go in HAVING, not WHERE

### Mistake 2: COUNT vs COUNT DISTINCT
❌ Wrong: `COUNT(company_id)` (counts rows)
✅ Right: `COUNT(DISTINCT company_id)` (counts unique companies)

---

## ⏱️ Time Spent
- ~4-5 hours on this challenge

### Mistake 1: Using WHERE Instead of HAVING
❌ **WRONG:**
```sql
WHERE SUM(salary_year_avg) > 100000
