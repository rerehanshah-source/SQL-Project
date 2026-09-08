COPY skills_dim
FROM 'C:/Users/Mohammed Aadil Shah/Downloads/all_folders/csv_files/skills_dim.csv'
DELIMITER ','
CSV HEADER;

COPY skills_job_dim
FROM 'C:/Users/Mohammed Aadil Shah/Downloads/all_folders/csv_files/skills_job_dim.csv'
DELIMITER ','
CSV HEADER;


SELECT*
FROM company_dim
LIMIT 10;