# Database Performance Monitoring Report – ALX Airbnb

## Objective
Monitor and refine the performance of frequently used SQL queries using `EXPLAIN ANALYZE`.

## Query Example Analyzed

```sql
SELECT *
FROM Booking
JOIN User ON Booking.user_id = User.user_id
WHERE Booking.start_date BETWEEN '2023-01-01' AND '2023-12-31';
