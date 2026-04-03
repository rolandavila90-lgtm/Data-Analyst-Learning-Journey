/*To: Junior Data Analyst
From: Global Strategy Team
Subject: Data Pull - On-Site Engineering Markets
Please pull a report from the job_postings_fact table showing the following metrics:
    Country (job_country)
    Job Category (job_title_short)
    Total volume of postings
    Number of unique companies hiring (company_id)
    Average yearly salary (calculated manually as Total Sum / Total Count)
Parameters for the data pull:
    Role must contain the word 'Engineer' in the job_title_short.
    Role must be strictly on-site (job_work_from_home is FALSE).
    Exclude any records with missing yearly salary data.
Grouping & Thresholds:
    Group the data by both Country and Job Category.
    Only include groups with more than 5 total postings.
    Only include groups where the calculated average salary is greater than $100,000.
Formatting:
    Sort the final report by the calculated average salary, highest to lowest.*/ 	
SELECT 	
	job_country, 	
    job_title_short, 	
    COUNT(job_title_short) AS total_posting,
    COUNT(DISTINCT company_id) AS total_unique_companies, 	
   SUM(salary_year_avg) / COUNT(salary_year_avg) AS avg_yearly_salary
FROM 	
	job_postings_fact 	
WHERE 	
	job_title_short LIKE '%Engineer%' AND 	
    job_work_from_home = FALSE AND 	
    salary_year_avg IS NOT NULL 	
GROUP BY 	
	job_country, job_title_short
HAVING 	
   COUNT(company_id) > 5 AND 	
  SUM(salary_year_avg) / COUNT(salary_year_avg) > 100000 	
 ORDER BY 	
 	avg_yearly_salary DESC; 	

/* 💡 DATA INSIGHTS
- VOLUME VS. NICHE: The United States dominates the market in sheer volume, offering 
  hundreds of highly-paid, on-site Senior Data Engineer and Machine Learning roles 
  averaging over $150,000 across hundreds of companies.

- MARKET OUTLIERS: The highest average salary appeared in the Bahamas ($219k+), 
  but this was driven by a single company posting only 8 roles, indicating a 
  highly localized and specific opportunity.

- STABILITY BENCHMARK: While niche international markets offer extreme compensation, 
  the US remains the most stable and expansive market for on-site engineering talent, 
  providing the highest frequency of six-figure opportunities.*/
