# 🎬 Movies Database SQL Project

## 📌 Project Overview

This project involves creating and querying a **Movies Database (MOVIESDB)** designed to store and analyze comprehensive information about movies, including their financials, languages, actors, and more. It uses **MySQL** for data storage and querying.

The goal is to perform hands-on SQL operations to:
- Design tables with appropriate constraints
- Perform data cleaning
- Write queries using SQL clauses and functions
- Gain insights into the movie industry through advanced queries

---

## 🗂️ Database Structure

**1. `movies`**  
Stores movie information:  
- `movie_id`, `movie_id_title`, `industry`, `release_year`, `imdb_rating`, `studio`, `language_id`

**2. `financials`**  
Stores financial data for each movie:  
- `movie_id`, `budget`, `revenue`, `unit`, `currency`

**3. `movie_actor`**  
Stores the relationship between movies and actors:  
- `movie_id`, `actor_id`

**4. `languages`**  
Stores language details:  
- `language_id`, `name`

**5. `actors`**  
Stores actor information:  
- `actor_id`, `name`, `birth_year`

---

## 📊 Enhanced Entity Relationship Diagram (EER)

Below is the EER diagram representing the database schema:

![MoviesDB EER Diagram](image.png)

---

## 🔧 Features & Concepts Covered

| Feature                | Description                                             |
|------------------------|---------------------------------------------------------|
| 🛠️ Database Creation   | Create and configure the `MOVIESDB` schema              |
| 📋 Table Design         | Define tables with keys and constraints                 |
| 🧼 Data Cleaning        | Clean columns using `TRIM()`                            |
| 🔎 Filtering            | Use `WHERE`, `IN`, `LIKE`, `IS NULL`, `IS NOT NULL`    |
| 📊 Aggregation          | Apply `GROUP BY`, `HAVING`, and aggregate functions     |
| 🧠 Categorization       | Use `CASE` to classify data                             |
| 🔢 Math & Date Functions| Use built-in functions for calculations and age logic   |
| 🔗 Joins                | Combine data using SQL joins                            |
| 🔍 Subqueries           | Extract insights with nested subqueries                 |
| 👁️ Views               | Create views for reusable query logic                   |

---

## 📊 Sample Business Insights

- 🎥 Movies released after 2000 with IMDb rating > 8.0  
- 🏢 Studios producing consistent high-rated content  
- 🧑‍🎤 Actors starring in high-revenue movies  
- 🗣️ Language trends across movies  
- 👴 Age demographics of actors  


