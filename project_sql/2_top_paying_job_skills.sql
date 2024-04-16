/*
Question: What skills are required for the top-paying data analyst jobs?
- Use the top 10 highest-paying Data Analyst jobs from first query
- Add the specific skills required for these roles
- Why? It provides a detailed look at which high-paying jobs demand certain skills, 
    helping job seekers understand which skills to develop that align with top salaries
*/

WITH top_paying_jobs AS (
    SELECT
        job_id,
        job_title,
        salary_year_avg,
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
    LIMIT 10
)

SELECT 
    top_paying_jobs.*,
    skills
FROM top_paying_jobs
INNER JOIN skills_job_dim ON top_paying_jobs.job_id = skills_job_dim.job_id
INNER JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
ORDER BY
    salary_year_avg DESC

/*
Here's the breakdown of the most demanded skills for data analysts in 2023, based on job postings:
SQL is leading with a bold count of 8.
Python follows closely with a bold count of 5.
Tableau is also highly sought after, with a bold count of 3.
Other skills like R, oracle, hadoop, cognos, alteryx, visual basic, matlab, power bi, looker and Excel show varying degrees of demand.

[
  {
    "job_id": 1306755,
    "job_title": "Data Analyst (Oracle DBA)",
    "salary_year_avg": "140000.0",
    "company_name": "Engage Partners, Inc.",
    "skills": "sql"
  },
  {
    "job_id": 1306755,
    "job_title": "Data Analyst (Oracle DBA)",
    "salary_year_avg": "140000.0",
    "company_name": "Engage Partners, Inc.",
    "skills": "visual basic"
  },
  {
    "job_id": 1306755,
    "job_title": "Data Analyst (Oracle DBA)",
    "salary_year_avg": "140000.0",
    "company_name": "Engage Partners, Inc.",
    "skills": "oracle"
  },
  {
    "job_id": 1306755,
    "job_title": "Data Analyst (Oracle DBA)",
    "salary_year_avg": "140000.0",
    "company_name": "Engage Partners, Inc.",
    "skills": "cognos"
  },
  {
    "job_id": 1306755,
    "job_title": "Data Analyst (Oracle DBA)",
    "salary_year_avg": "140000.0",
    "company_name": "Engage Partners, Inc.",
    "skills": "alteryx"
  },
  {
    "job_id": 281101,
    "job_title": "Oracle DBA/Data Analyst",
    "salary_year_avg": "100000.0",
    "company_name": "Pull Skill Technologies",
    "skills": "sql"
  },
  {
    "job_id": 281101,
    "job_title": "Oracle DBA/Data Analyst",
    "salary_year_avg": "100000.0",
    "company_name": "Pull Skill Technologies",
    "skills": "visual basic"
  },
  {
    "job_id": 281101,
    "job_title": "Oracle DBA/Data Analyst",
    "salary_year_avg": "100000.0",
    "company_name": "Pull Skill Technologies",
    "skills": "oracle"
  },
  {
    "job_id": 281101,
    "job_title": "Oracle DBA/Data Analyst",
    "salary_year_avg": "100000.0",
    "company_name": "Pull Skill Technologies",
    "skills": "cognos"
  },
  {
    "job_id": 281101,
    "job_title": "Oracle DBA/Data Analyst",
    "salary_year_avg": "100000.0",
    "company_name": "Pull Skill Technologies",
    "skills": "alteryx"
  },
  {
    "job_id": 600227,
    "job_title": "Institutional Credit Management - AVP Data Analyst",
    "salary_year_avg": "89830.0",
    "company_name": "Citi",
    "skills": "sql"
  },
  {
    "job_id": 600227,
    "job_title": "Institutional Credit Management - AVP Data Analyst",
    "salary_year_avg": "89830.0",
    "company_name": "Citi",
    "skills": "python"
  },
  {
    "job_id": 600227,
    "job_title": "Institutional Credit Management - AVP Data Analyst",
    "salary_year_avg": "89830.0",
    "company_name": "Citi",
    "skills": "visual basic"
  },
  {
    "job_id": 600227,
    "job_title": "Institutional Credit Management - AVP Data Analyst",
    "salary_year_avg": "89830.0",
    "company_name": "Citi",
    "skills": "sql server"
  },
  {
    "job_id": 600227,
    "job_title": "Institutional Credit Management - AVP Data Analyst",
    "salary_year_avg": "89830.0",
    "company_name": "Citi",
    "skills": "oracle"
  },
  {
    "job_id": 600227,
    "job_title": "Institutional Credit Management - AVP Data Analyst",
    "salary_year_avg": "89830.0",
    "company_name": "Citi",
    "skills": "hadoop"
  },
  {
    "job_id": 600227,
    "job_title": "Institutional Credit Management - AVP Data Analyst",
    "salary_year_avg": "89830.0",
    "company_name": "Citi",
    "skills": "excel"
  },
  {
    "job_id": 600227,
    "job_title": "Institutional Credit Management - AVP Data Analyst",
    "salary_year_avg": "89830.0",
    "company_name": "Citi",
    "skills": "tableau"
  },
  {
    "job_id": 605322,
    "job_title": "Business Data Analyst",
    "salary_year_avg": "80000.0",
    "company_name": "Acadia Technologies, Inc.",
    "skills": "sql"
  },
  {
    "job_id": 605322,
    "job_title": "Business Data Analyst",
    "salary_year_avg": "80000.0",
    "company_name": "Acadia Technologies, Inc.",
    "skills": "python"
  },
  {
    "job_id": 605322,
    "job_title": "Business Data Analyst",
    "salary_year_avg": "80000.0",
    "company_name": "Acadia Technologies, Inc.",
    "skills": "nosql"
  },
  {
    "job_id": 605322,
    "job_title": "Business Data Analyst",
    "salary_year_avg": "80000.0",
    "company_name": "Acadia Technologies, Inc.",
    "skills": "r"
  },
  {
    "job_id": 605322,
    "job_title": "Business Data Analyst",
    "salary_year_avg": "80000.0",
    "company_name": "Acadia Technologies, Inc.",
    "skills": "matlab"
  },
  {
    "job_id": 659255,
    "job_title": "Data Analyst",
    "salary_year_avg": "73100.0",
    "company_name": "Knoxville Utilities Board",
    "skills": "sql"
  },
  {
    "job_id": 659255,
    "job_title": "Data Analyst",
    "salary_year_avg": "73100.0",
    "company_name": "Knoxville Utilities Board",
    "skills": "python"
  },
  {
    "job_id": 659255,
    "job_title": "Data Analyst",
    "salary_year_avg": "73100.0",
    "company_name": "Knoxville Utilities Board",
    "skills": "power bi"
  },
  {
    "job_id": 1684727,
    "job_title": "Market Research & Data Analyst",
    "salary_year_avg": "70000.0",
    "company_name": "Siri Infosolutions Inc",
    "skills": "sql"
  },
  {
    "job_id": 1684727,
    "job_title": "Market Research & Data Analyst",
    "salary_year_avg": "70000.0",
    "company_name": "Siri Infosolutions Inc",
    "skills": "python"
  },
  {
    "job_id": 1684727,
    "job_title": "Market Research & Data Analyst",
    "salary_year_avg": "70000.0",
    "company_name": "Siri Infosolutions Inc",
    "skills": "excel"
  },
  {
    "job_id": 1684727,
    "job_title": "Market Research & Data Analyst",
    "salary_year_avg": "70000.0",
    "company_name": "Siri Infosolutions Inc",
    "skills": "tableau"
  },
  {
    "job_id": 1684727,
    "job_title": "Market Research & Data Analyst",
    "salary_year_avg": "70000.0",
    "company_name": "Siri Infosolutions Inc",
    "skills": "looker"
  },
  {
    "job_id": 1795958,
    "job_title": "Data analyst",
    "salary_year_avg": "65000.0",
    "company_name": "Montefiore Medical Center",
    "skills": "excel"
  },
  {
    "job_id": 39074,
    "job_title": "Institutional Credit Management - Data Analyst",
    "salary_year_avg": "53620.0",
    "company_name": "Citi",
    "skills": "sql"
  },
  {
    "job_id": 39074,
    "job_title": "Institutional Credit Management - Data Analyst",
    "salary_year_avg": "53620.0",
    "company_name": "Citi",
    "skills": "python"
  },
  {
    "job_id": 39074,
    "job_title": "Institutional Credit Management - Data Analyst",
    "salary_year_avg": "53620.0",
    "company_name": "Citi",
    "skills": "r"
  },
  {
    "job_id": 39074,
    "job_title": "Institutional Credit Management - Data Analyst",
    "salary_year_avg": "53620.0",
    "company_name": "Citi",
    "skills": "tableau"
  }
]
*/