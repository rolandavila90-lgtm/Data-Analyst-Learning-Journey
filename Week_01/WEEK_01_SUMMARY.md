## 📊 Week 1: On-Site Engineering Markets

**Question:** Which on-site engineering roles pay the most?

**What I found:**
- 🇺🇸 USA has the most high-paying engineering jobs
- 🏝️ Bahamas shows highest salary ($219k) but only 8 jobs from 1 company
- 💡 **Lesson:** High salary ≠ good market. Need volume too!

**SQL I used:**
- GROUP BY & HAVING
- COUNT DISTINCT (count unique companies)
- Manual AVG (SUM/COUNT)

👉 See full details: `Week_01/WEEK_01_SUMMARY.md`


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
