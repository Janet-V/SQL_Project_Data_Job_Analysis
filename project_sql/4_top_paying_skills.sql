SELECT 
    skills,
    ROUND(AVG(salary_year_avg), 0) AS avg_salary
FROM job_postings_fact
INNER JOIN skills_job_dim ON job_postings_fact.job_id = skills_job_dim.job_id
INNER JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
WHERE
    job_title_short = 'Data Analyst' 
    AND salary_year_avg IS NOT NULL
    AND job_location = 'New York'
GROUP BY
    skills
ORDER BY
    avg_salary DESC

/*
Here's a breakdown of the results for top paying skills for Data Analysts:
- Top salaries are commanded by analysts skilled in Alteryx and Cognos which are used as a data prepation and analytics tool.
- Programming languages that most anyalyst used are Visual Basic and SQL.

[
  {
    "skills": "alteryx",
    "avg_salary": "120000"
  },
  {
    "skills": "cognos",
    "avg_salary": "120000"
  },
  {
    "skills": "visual basic",
    "avg_salary": "109943"
  },
  {
    "skills": "oracle",
    "avg_salary": "109943"
  },
  {
    "skills": "hadoop",
    "avg_salary": "89830"
  },
  {
    "skills": "sql server",
    "avg_salary": "89830"
  },
  {
    "skills": "sql",
    "avg_salary": "86650"
  },
  {
    "skills": "matlab",
    "avg_salary": "80000"
  },
  {
    "skills": "nosql",
    "avg_salary": "80000"
  },
  {
    "skills": "excel",
    "avg_salary": "74943"
  },
  {
    "skills": "python",
    "avg_salary": "73310"
  },
  {
    "skills": "power bi",
    "avg_salary": "73100"
  },
  {
    "skills": "tableau",
    "avg_salary": "71150"
  },
  {
    "skills": "looker",
    "avg_salary": "70000"
  },
  {
    "skills": "r",
    "avg_salary": "66810"
  }
]

*/