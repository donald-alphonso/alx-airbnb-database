# Partitioning Performance Report – ALX Airbnb Database

## Objective
Optimize queries on the `Booking` table by partitioning based on the `start_date` column.

## Implementation
Partitioned the `Booking` table using `RANGE` partitioning on `YEAR(start_date)`:

```sql
PARTITION BY RANGE (YEAR(start_date)) (
  PARTITION p2022 VALUES LESS THAN (2023),
  PARTITION p2023 VALUES LESS THAN (2024),
  PARTITION p2024 VALUES LESS THAN (2025),
  PARTITION pmax VALUES LESS THAN MAXVALUE
);
