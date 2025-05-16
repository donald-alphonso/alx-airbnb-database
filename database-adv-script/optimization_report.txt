# Query Optimization Report – ALX Airbnb Database

## Original Query
The original query joined Booking, User, Property, and Payment tables to retrieve full booking details.

## Performance Bottlenecks
Using `EXPLAIN`, we observed:
- `ALL` type join on Booking or Payment if indexes are missing
- Higher row scan count on large datasets

## Optimization Actions
- Verified indexes on `Booking.user_id`, `Booking.property_id`, and `Payment.booking_id`
- Ensured only relevant columns were selected
- Considered filtering or pagination for future scalability

## Result
After adding the required indexes, EXPLAIN shows `ref` joins with significantly fewer rows scanned.

Optimized query execution time was reduced on test dataset.

### Why Index Not Used on Booking?

In the initial query, we join Booking with User, Property, and Payment tables **without any filtering** (`WHERE` clause). Because of this:

- The Booking table has only 6 rows.
- MySQL chooses a full table scan (`ALL`) instead of using an index, as it can read the full table quickly.
- This is normal behavior for small tables or when no selective filter is applied.

**Conclusion**: Indexes like `idx_booking_user` or `idx_booking_property` are useful **when filtering**, but not always needed for full result sets on small tables.

For real-world, high-volume datasets, these indexes would be critical for performance.

