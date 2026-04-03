# Week 1: SQL Fundamentals & Grouping

## 📚 Concepts I Learned
- GROUP BY & HAVING clauses
- COUNT, COUNT DISTINCT, SUM
- Manual AVG (SUM/COUNT) calculation
- LIKE pattern matching
- ORDER BY with DESC sorting

---

## 🎯 Challenge 1: On-Site Engineering Markets

**What was the business question?**
> Which engineering roles pay the most when they're on-site?

**My approach:**
1. Filter for rows with "Engineer" in the job title using LIKE '%Engineer%'
2. Keep only on-site jobs (job_work_from_home = FALSE)
3. Remove jobs with missing salary data (salary_year_avg IS NOT NULL)
4. Group by Country and Job Category
5. Show only groups with 5+ jobs AND avg salary > $100k (HAVING clause)
6. Sort by highest salary first (ORDER BY avg_yearly_salary DESC)

**What I discovered:**
- The USA has the most high-paying on-site engineering jobs (hundreds of postings)
- The Bahamas shows the highest average salary ($219k+) BUT only 8 jobs from 1 company
- **Key Insight:** High salary ≠ Good market. Volume matters!

**Files:**
- Query: `01_OnSite_Engineering_Markets.sql`
- Results: `01_result.png`

---

## 💡 Mistakes I Made & How I Fixed Them

### Mistake 1: Using WHERE Instead of HAVING
❌ **WRONG:**
```sql
WHERE SUM(salary_year_avg) > 100000
