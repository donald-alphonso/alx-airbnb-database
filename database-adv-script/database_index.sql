-- User table already has index on email
-- Re-index (if needed)
CREATE INDEX idx_user_email ON User(email);

-- Booking table indexes
CREATE INDEX idx_booking_user ON Booking(user_id);
CREATE INDEX idx_booking_property ON Booking(property_id);
CREATE INDEX idx_booking_dates ON Booking(start_date, end_date);

-- Property table
CREATE INDEX idx_property_host ON Property(host_id);

-- Review table
CREATE INDEX idx_review_property ON Review(property_id);

-- Explain
EXPLAIN SELECT * FROM Booking WHERE user_id = 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a12';

-- Check query plan after index
EXPLAIN ANALYZE
SELECT *
FROM Booking
WHERE user_id = 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a12';

