# Advanced SQL Joins – ALX Airbnb Database

This script demonstrates advanced SQL JOIN operations using a simulated Airbnb database schema.

## Queries Included
1. **INNER JOIN** – Retrieves all bookings and the users who made them.
2. **LEFT JOIN** – Retrieves all properties and their reviews, including properties without reviews.
3. **FULL OUTER JOIN** – Retrieves all users and all bookings, even if not linked. Since MySQL doesn't support FULL OUTER JOIN natively, it's emulated using a `UNION` of `LEFT JOIN` and `RIGHT JOIN`.
4. **Non-correlated Subquery** – Finds all properties with an average review rating greater than 4.0.
5. **Correlated Subquery** – Identifies users who have made more than 3 bookings.
6. **Total Bookings Per User**
   - Counts how many bookings each user has made using `COUNT()` and `GROUP BY`.

7. **Property Ranking by Bookings**
   - Ranks properties by number of bookings using `RANK()` as a window function.

## Key Concepts Learned
- How to use different types of SQL JOINs
- Differences between INNER, LEFT, and FULL OUTER JOIN
- Emulating FULL OUTER JOIN in MySQL using UNION
- Understanding join behavior with NULL results
- How to filter results based on grouped subquery results
- Difference between subqueries that are independent and those dependent on the outer query
- How to count related rows per user using a correlated subquery
- Use of `COUNT()` with `GROUP BY` to aggregate data
- Applying window functions like `RANK()` to compute rankings over result sets
- Handling ties in rankings using `RANK()` vs `ROW_NUMBER()`

## File Structure
- `joins_queries.sql`: Contains the SQL queries for Task 0.
- `subqueries.sql`: SQL scripts for subquery examples.
- `aggregations_and_window_functions.sql`: Contains both queries above.
