# Advanced SQL Joins – ALX Airbnb Database

This script demonstrates advanced SQL JOIN operations using a simulated Airbnb database schema.

## Queries Included
1. **INNER JOIN** – Retrieves all bookings and the users who made them.
2. **LEFT JOIN** – Retrieves all properties and their reviews, including properties without reviews.
3. **FULL OUTER JOIN** – Retrieves all users and all bookings, even if not linked. Since MySQL doesn't support FULL OUTER JOIN natively, it's emulated using a `UNION` of `LEFT JOIN` and `RIGHT JOIN`.

## Key Concepts Learned
- How to use different types of SQL JOINs
- Differences between INNER, LEFT, and FULL OUTER JOIN
- Emulating FULL OUTER JOIN in MySQL using UNION
- Understanding join behavior with NULL results

## File Structure
- `joins_queries.sql`: Contains the SQL queries for Task 0.
