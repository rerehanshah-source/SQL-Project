with top_paying_jobs AS (
SELECT 
job_id, 
job_title,
salary_year_avg,
name as company_name
FROM job_postings_fact
left join company_dim on job_postings_fact.company_id = company_dim.company_id
where 
job_title_short = 'Data Analyst' AND
job_location = 'Anywhere'and
salary_year_avg IS NOT NULL
order BY 
salary_year_avg DESC
limit 10
)

select
top_paying_jobs.*,
skills
from top_paying_jobs
inner join skills_job_dim on top_paying_jobs.job_id = skills_job_dim.job_id
inner join skills_dim on skills_job_dim.skill_id = skills_dim.skill_id
order BY
salary_year_avg DESC