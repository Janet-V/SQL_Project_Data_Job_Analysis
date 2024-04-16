/*
Question: What are the top-paying data analyst jobs?
- Identify the top 10 highest-paying Data Analyst roles that are available in New York
- Focuses on job postings with specified salaries (remove nulls)
- Include company names of top 10 roles
- Why? Highlight the top-paying opportunities for Data Analysts, offering insights into employment options and location flexibility.
*/

SELECT
    job_id,
    job_title,
    job_location,
    job_schedule_type,
    salary_year_avg,
    job_posted_date,
    name AS company_name
FROM
    job_postings_fact
LEFT JOIN company_dim ON job_postings_fact.company_id = company_dim.company_id
WHERE
    job_title_short = 'Data Analyst' AND
    job_location = 'New York' AND
    salary_year_avg IS NOT NULL
ORDER BY
    salary_year_avg DESC

/*
Here's the breakdown of the top data analyst jobs in 2023:
Wide Salary Range: Top 10 paying data analyst roles span from 53,620 to 140,000, indicating significant salary potential in the field.
Diverse Employers: Companies like Engage Partners Inc., TIAA Bank, and Pull Skill Technologies are among those offering high salaries showing a board interest across different industries.
Job Title Variety: There's a high diversity in job titles from Institutional Credit Management - Data Analyst to Data Analyst(Oracle DBA).

Results
=======
[
  {
    "job_id": 1306755,
    "job_title": "Data Analyst (Oracle DBA)",
    "job_location": "New York",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "140000.0",
    "job_posted_date": "2023-02-24 17:00:14",
    "company_name": "Engage Partners, Inc."
  },
  {
    "job_id": 1145323,
    "job_title": "Fraud Lead Data Analyst",
    "job_location": "New York",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "131900.0",
    "job_posted_date": "2023-05-26 20:00:38",
    "company_name": "TIAA Bank"
  },
  {
    "job_id": 281101,
    "job_title": "Oracle DBA/Data Analyst",
    "job_location": "New York",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "100000.0",
    "job_posted_date": "2023-02-21 21:00:14",
    "company_name": "Pull Skill Technologies"
  },
  {
    "job_id": 600227,
    "job_title": "Institutional Credit Management - AVP Data Analyst",
    "job_location": "New York",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "89830.0",
    "job_posted_date": "2023-01-03 03:00:09",
    "company_name": "Citi"
  },
  {
    "job_id": 605322,
    "job_title": "Business Data Analyst",
    "job_location": "New York",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "80000.0",
    "job_posted_date": "2023-10-06 20:00:05",
    "company_name": "Acadia Technologies, Inc."
  },
  {
    "job_id": 659255,
    "job_title": "Data Analyst",
    "job_location": "New York",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "73100.0",
    "job_posted_date": "2023-12-19 17:00:21",
    "company_name": "Knoxville Utilities Board"
  },
  {
    "job_id": 1684727,
    "job_title": "Market Research & Data Analyst",
    "job_location": "New York",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "70000.0",
    "job_posted_date": "2023-08-18 19:00:13",
    "company_name": "Siri Infosolutions Inc"
  },
  {
    "job_id": 1795958,
    "job_title": "Data analyst",
    "job_location": "New York",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "65000.0",
    "job_posted_date": "2023-07-31 00:00:12",
    "company_name": "Montefiore Medical Center"
  },
  {
    "job_id": 1377620,
    "job_title": "Data Analyst",
    "job_location": "New York",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "60000.0",
    "job_posted_date": "2023-01-19 15:00:44",
    "company_name": "Diamanti"
  },
  {
    "job_id": 39074,
    "job_title": "Institutional Credit Management - Data Analyst",
    "job_location": "New York",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "53620.0",
    "job_posted_date": "2023-02-06 08:00:02",
    "company_name": "Citi"
  }
]