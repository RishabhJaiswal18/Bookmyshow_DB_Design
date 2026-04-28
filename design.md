📘 Database Design Document
🧩 Problem Statement

Design a database system for a movie ticket booking platform where:

Users can view shows for a theatre
Shows are displayed for the next 7 days
Each show includes:
Movie name
Language
Show timings
Screen (Audi)
🧱 Entity Identification
1. Theatre

Represents a physical movie theatre.

Attributes:

theatre_id (Primary Key)
name
city
2. Screen (Audi)

Each theatre contains multiple screens.

Attributes:

screen_id (Primary Key)
theatre_id (Foreign Key)
screen_name
3. Movie

Represents a movie being screened.

Attributes:

movie_id (Primary Key)
title
language
duration
genre
4. Show

Represents a specific screening of a movie.

Attributes:

show_id (Primary Key)
movie_id (Foreign Key)
screen_id (Foreign Key)
show_date
start_time
end_time
🔗 Relationships
One Theatre → Many Screens
One Screen → Many Shows
One Movie → Many Shows
🧠 Design Rationale
Separation of concerns:
Movie details are independent of show timings
Screens are separated to support multiple audis
Flexibility:
A movie can run on multiple screens and timings
A screen can host multiple movies on different time slots
Scalability:
New theatres, screens, and movies can be added without schema change
🧪 Sample Data Overview

Example:

Theatre: PVR Nexus (Kanpur)
Screens: Audi 1, Audi 2
Movies: Dasara, KKBKKJ, TJMM
Shows: Multiple timings across screens
📐 Normalization Details
✅ First Normal Form (1NF)
All attributes are atomic
No repeating groups or multi-valued attributes
✅ Second Normal Form (2NF)
No partial dependency
Each non-key attribute depends on the entire primary key
✅ Third Normal Form (3NF)
No transitive dependency
Example:
Theatre city is not stored in Screen or Show
✅ Boyce-Codd Normal Form (BCNF)
Every determinant is a candidate key
Example:
show_id uniquely determines all show attributes
⚠️ Assumptions
Each show belongs to one movie and one screen
Show timings do not overlap within the same screen
Each theatre operates independently
🔮 Possible Extensions
Seat availability & booking system
Dynamic pricing
User accounts & history
Reviews & ratings
Payment integration
✅ Conclusion

The database is designed to be:

Scalable
Efficient
Fully normalized (up to BCNF)

It ensures data consistency, avoids redundancy, and supports real-world ticket booking scenarios effectively.