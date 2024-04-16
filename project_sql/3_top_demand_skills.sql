/*
Question: What are the most in-demand skills for data analysts?
- Join job postings to inner join table similar to query 2
- Identify the top 5 in-demand skills for a data analyst.
- Focus on all job postings.
- Why? Retrieves the top 5 skills with the highest demand in the job market, 
    providing insights into the most valuable skills for job seekers.
*/

SELECT 
    skills,
    COUNT(skills_job_dim.job_id) AS demand_count
FROM job_postings_fact
INNER JOIN skills_job_dim ON job_postings_fact.job_id = skills_job_dim.job_id
INNER JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
WHERE
    job_title_short = 'Data Analyst' 
    AND job_location = 'New York' 
GROUP BY
    skills
ORDER BY
    demand_count DESC
LIMIT 5;

/*
Here's the breakdown of the most demanded skills for data analysis in 2023
SQL and Python remain fundamental emphazing the need for fundamental skills in data processing and data storytelling.
Visualization tools like Excel, Tableau, and Oracle are essential as well.

[
  {
    "skills": "sql",
    "demand_count": "52"
  },
  {
    "skills": "python",
    "demand_count": "29"
  },
  {
    "skills": "excel",
    "demand_count": "28"
  },
  {
    "skills": "tableau",
    "demand_count": "26"
  },
  {
    "skills": "oracle",
    "demand_count": "16"
  }
]