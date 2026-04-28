🎬 BookMyShow - Database Design Assignment

📌 Overview

This project models the backend database design of a movie ticket booking platform similar to BookMyShow.

The system allows users to:

View available movies in a theatre
Select a date (next 7 days)
Browse show timings for each movie
Identify which screen (audi) the show is running in

🎯 Objectives

This assignment covers:

✅ P1
Identify entities and attributes
Design relational tables
Ensure normalization (1NF, 2NF, 3NF, BCNF)
Provide SQL scripts for schema creation and sample data

✅ P2
Write SQL query to fetch all shows for a given:
Theatre
Date
Include show timings and movie details

🧱 Database Design Summary
Entities:
Theatre
Screen (Audi)
Movie
Show

Relationships:
One Theatre → Many Screens

One Screen → Many Shows

One Movie → Many Shows

🗂️ Project Structure
bookmyshow-db-design/
│
├── README.md        # Project overview
├── design.md        # Detailed DB design explanation
├── schema.sql       # CREATE TABLE queries
├── data.sql         # Sample data
└── queries.sql      # Required SQL queries (P2)

⚙️ Tech Stack
Database: MySQL
Design Approach: Relational Modeling
Normalization: Up to BCNF

🚀 How to Run
Create a MySQL database:
CREATE DATABASE bookmyshow;
USE bookmyshow;
Run schema:
SOURCE schema.sql;
Insert sample data:
SOURCE data.sql;
Execute query:
SOURCE queries.sql;

📊 Sample Query (P2)

Fetch all shows for a given theatre and date:

SELECT 
    m.title AS movie_name,
    m.language,
    s.show_date,
    s.start_time,
    s.end_time,
    sc.screen_name,
    t.name AS theatre_name
FROM Show s
JOIN Movie m ON s.movie_id = m.movie_id
JOIN Screen sc ON s.screen_id = sc.screen_id
JOIN Theatre t ON sc.theatre_id = t.theatre_id
WHERE s.show_date = '2026-05-19'
AND t.theatre_id = 1
ORDER BY s.start_time;

🧠 Key Design Decisions
Separate Screen from Theatre to support multiple audis
Use Show as a junction entity connecting Movie + Screen + Date/Time
Avoid redundant data to maintain normalization
Use foreign keys for referential integrity

✅ Normalization Compliance

Normal Form	Status	Explanation

1NF	✅	Atomic columns, no repeating groups

2NF	✅	No partial dependency

3NF	✅	No transitive dependency

BCNF	✅	All determinants are candidate keys

🔥 Future Enhancements

Seat management system

Booking & payment module

User authentication

Pricing & offers

Movie formats (IMAX, 3D, etc.)

👨‍💻 Author
Rishabh Jaiswal

📌 Notes

This project focuses purely on database design and SQL, not on backend APIs or UI.
