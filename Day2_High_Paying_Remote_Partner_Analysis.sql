/*Project: High-Paying Remote Partner Analysis
To: Junior Data Analyst
From: Head of Talent Acquisition
Subject: Identifying the "Gold Standard" Remote Employers
Business Objective: Our goal is to identify which companies offer the highest average compensation for remote Data Analysts. 	
We need a summary report that ranks these employers to help prioritize our strategic partnerships.
Task Requirements:
    Data Sources: Connect the job postings data (job_postings_fact aliased as jobs) with the company directory 	
    (company_dim aliased as companies) using a LEFT JOIN.
    Specific Filters:
        Target only the Data Analyst role.
        Focus exclusively on Remote positions.
        Remove any records where the Yearly Salary is missing.
    Requested Metrics:
        The Company Name.
        The Average Yearly Salary (labeled as avg_salary).
        The Total Number of Postings (labeled as job_count).
    Report Structure:
        Group the data by company.
        Sort by the highest average salary first.
        Display only the Top 10 results.*/ 	
        	          
SELECT      
    companies.name AS company_name,
    AVG(jobs.salary_year_avg) AS avg_salary,      
    COUNT(jobs.job_title_short) AS job_count         
FROM      
    job_postings_fact AS jobs        
LEFT JOIN      
    company_dim AS companies 
    ON jobs.company_id = companies.company_id      
WHERE  
    jobs.job_title_short = 'Data Analyst' AND      
    jobs.job_work_from_home IS TRUE AND      
    jobs.salary_year_avg IS NOT NULL 
GROUP BY      
    companies.name
ORDER BY      
    avg_salary DESC
LIMIT 10;  	    

/*💡 DATA INSIGHTS
- MARKET COMPETITIVENESS: While traditional tech giants (FAANG) like Meta are present, 

  the data shows that healthcare (Uclahealthcareers) and telecommunications (AT&T) are 

  offering highly competitive salaries above $160k for remote talent.

- EXCLUSIVITY: Most top-paying roles have a job count of 1, suggesting these are 

  highly specialized "unicorn" positions rather than mass-hiring phases.

- SALARY BENCHMARK: For a remote Data Analyst, the current "Gold Standard" 

  ceiling in this dataset sits at approximately $172,500.*/
