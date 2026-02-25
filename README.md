# Netflix Content Strategy Analysis Using SQL
<img width="2226" height="678" alt="image" src="https://github.com/user-attachments/assets/a3499575-99d6-4c03-97ee-6aa1097da457" />

## 📖 Project Overview:
This project performs an end-to-end exploratory data analysis of Netflix’s Movies and TV Shows dataset using SQL, solving 14+ real-world business questions.
Rather than simply executing queries, the objective of this analysis is to extract actionable, business-relevant insights related to:

 1. Content distribution
 2. Rating patterns
 3. Geographic production trends
 4. Genre dominance
 5. Content growth over time
 6. Thematic categorization (violence-related keywords)
 
The project demonstrates strong SQL fundamentals including:
 1. Aggregations
 2. GROUP BY & ORDER BY
 3. Subqueries
 4. CTEs
 5. Date functions
 6. String pattern matching
 7. Conditional classification using CASE

## 🗂 Dataset Information

  Source: Netflix Movies & TV Shows Dataset
  Total Records: ~8,800+ titles
  Content Types: Movies & TV Shows

 Key Columns:
            `type`
            `title`
           `director`
            `cast`
            `country`
            `release_year`
            `rating`
            `duration`
            `listed_in`
            `date_added`
            `description`



 ## 📊 Business Questions Addressed

1. Find the Most Common Rating for Movies and TV Shows
<img width="717" height="313" alt="Screenshot 2026-02-26 005650" src="https://github.com/user-attachments/assets/dd269bae-e2fd-444c-8444-f462b78a863c" />
Objective: Identify the most frequently occurring rating for each type of content.



2. Find the Top 5 Countries with the Most Content on Netflix
<img width="685" height="138" alt="image" src="https://github.com/user-attachments/assets/e6f9fd12-78a6-4326-8ebd-be77df8bda3d" />
Objective: Identify the top 5 countries with the highest number of content items.



3. Find Content Added in the Last 5 Years
<img width="923" height="130" alt="image" src="https://github.com/user-attachments/assets/26b1f3f5-639c-4c5e-8895-6d620f6211bf" />
Objective: Retrieve content added to Netflix in the last 5 years.

4. List All TV Shows with More Than 5 Seasons
<img width="627" height="98" alt="image" src="https://github.com/user-attachments/assets/32798ad8-0d2b-438c-b8c8-d384ff9f8946" />
Objective: Identify TV shows with more than 5 seasons.

5. Count the Number of Content Items in Each Genre
<img width="700" height="131" alt="image" src="https://github.com/user-attachments/assets/a9481f92-2bd8-4943-bcbe-ff17f3cd0174" />
Objective: Count the number of content items in each genre.

6. Find each year and the average numbers of content release in India on netflix.
<img width="1143" height="242" alt="image" src="https://github.com/user-attachments/assets/c06ab8ff-49f0-409a-a20a-602197dcda8f" />
Objective: Calculate and rank years by the average number of content releases by India.


7. Find the Top 10 Actors Who Have Appeared in the Highest Number of Movies Produced in India
<img width="825" height="245" alt="image" src="https://github.com/user-attachments/assets/51303dcf-3572-4974-a751-77823602b482" />
Objective: Identify the top 10 actors with the most appearances in Indian-produced movies.

8. Categorize Content Based on the Presence of 'Kill' and 'Violence' Keywords
<img width="792" height="355" alt="image" src="https://github.com/user-attachments/assets/b295619c-5b94-4713-89d4-ca3f3685cdbe" />
Objective: Categorize content as 'Bad' if it contains 'kill' or 'violence' and 'Good' otherwise. Count the number of items in each category.

##📊 Key Insights


 Content Distribution:
  Movies dominate Netflix’s catalog, significantly outnumbering TV Shows.
  This indicates Netflix prioritizes movie acquisitions and productions for rapid content scaling.

 Rating Analysis:
  TV-MA is the most frequent rating across the platform.
  This suggests a strong focus on mature audiences.
  Family-friendly content (like G or PG) represents a smaller portion of the catalog.

 Geographic Contribution:
  The United States contributes the highest volume of content.
  India ranks among the top content-producing countries.
  Regional content production reflects Netflix’s localization strategy.

 Growth Trend Analysis:
  A sharp increase in content additions is visible after 2016.
  This aligns with Netflix’s global expansion strategy.
  Indian content production has shown steady growth year over year.

 Genre Dominance:
  Drama and International Movies appear among the most common categories.
  Multi-genre tagging increases discoverability and content reach.

 Content Classification (Keyword-Based)
  Using conditional logic in SQL:
  Content containing keywords like “kill” or “violence” was categorized as “Intense”
  Remaining content was categorized as “General”


This demonstrates:
Practical use of CASE statements
Business-focused content segmentation
Thematic analysis capability using text filtering


## 🧠 Technical Highlights:
This project demonstrates:
Advanced filtering with LIKE
Date transformation using TO_DATE
Rolling time analysis (last 5 years content)
Ranking & aggregation logic
CTE usage for structured queries
Data-driven categorization using CASE

Tools Used:
SQL (PostgreSQL / MySQL compatible)
Git & GitHub for version control
CSV dataset for structured analysis

## 📌 Conclusion:

This SQL analysis provides a structured view of Netflix’s content strategy across:
Content type distribution
Audience targeting via ratings
Regional production dominance
Growth trends over time
Thematic categorization
The project reflects strong analytical thinking, structured SQL writing, and business-oriented interpretation of data.

About This Project:
This project is part of a structured data analytics portfolio aimed at demonstrating:
Practical SQL proficiency
Business insight extraction
Clean documentation practices
Real-world analytical thinking



