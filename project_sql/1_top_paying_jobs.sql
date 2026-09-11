SELECT 
job_id, 
job_title,
job_location,
job_schedule_type,
salary_year_avg,
job_posted_date,
name as company_name
FROM job_postings_fact
left join company_dim on job_postings_fact.company_id = company_dim.company_id
where 
job_title_short = 'Data Analyst' AND
job_location = 'India'and
salary_year_avg IS NOT NULL
order BY 
salary_year_avg DESC