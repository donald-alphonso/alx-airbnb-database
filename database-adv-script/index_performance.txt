# Index Optimization Report – ALX Airbnb Database

## Objective
Improve query performance by adding indexes on frequently accessed columns in the `User`, `Booking`, and `Property` tables.

## Indexes Created

| Table     | Column(s)         | Index Name             |
|-----------|-------------------|------------------------|
| User      | email             | idx_user_email         |
| Booking   | user_id           | idx_booking_user       |
| Booking   | property_id       | idx_booking_property   |
| Booking   | start_date, end_date | idx_booking_dates  |
| Property  | host_id           | idx_property_host      |
| Review    | property_id       | idx_review_property    |

## Performance Measurement

### Example: Booking Lookup by `user_id`

**Before Index (EXPLAIN output)**  
- type: `ALL`  
- rows: 1000+

**After Index**  
- type: `ref`  
- rows: ~5  
- key: `idx_booking_user`

Significant performance gain observed, especially on large datasets.

## Conclusion

Adding indexes on frequently queried columns greatly reduced the number of scanned rows and improved query execution time. Indexing is critical for scalable database performance.
