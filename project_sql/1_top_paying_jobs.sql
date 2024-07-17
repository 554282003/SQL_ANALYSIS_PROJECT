
/*
Question: What are the top-paying data analyst jobs?
- Identify the top 10 highest-paying Data Analyst roles that are available remotely
- Focuses on job postings with specified salaries (remove nulls)
- BONUS: Include company names of top 10 roles
- Why? Highlight the top-paying opportunities for Data Analysts, offering insights into employment options and location flexibility.
*/

SELECT
    job_id,
    job_title,
    salary_year_avg,
    company.name AS company_name
FROM job_postings_fact AS job_postings
LEFT JOIN company_dim as company
ON job_postings.company_id = company.company_id
WHERE job_title_short = 'Data Analyst' AND 
job_location = 'Anywhere' AND 
salary_year_avg IS NOT NULL
ORDER BY 
salary_year_avg DESC
LIMIT 10
