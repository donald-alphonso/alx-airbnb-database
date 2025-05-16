-- Requête initiale avec plusieurs jointures
SELECT 
    B.booking_id,
    B.start_date,
    B.end_date,
    B.total_price,
    
    U.user_id,
    U.first_name,
    U.last_name,
    U.email,
    
    P.property_id,
    P.name AS property_name,
    P.location,
    P.pricepernight,
    
    PAY.payment_id,
    PAY.amount,
    PAY.payment_method,
    PAY.payment_date

FROM Booking B
INNER JOIN User U ON B.user_id = U.user_id
INNER JOIN Property P ON B.property_id = P.property_id
LEFT JOIN Payment PAY ON PAY.booking_id = B.booking_id;

-- Initial full query (no filter)
EXPLAIN SELECT 
    B.booking_id,
    B.start_date,
    B.end_date,
    B.total_price,
    
    U.user_id,
    U.first_name,
    U.last_name,
    U.email,
    
    P.property_id,
    P.name AS property_name,
    P.location,
    P.pricepernight,
    
    PAY.payment_id,
    PAY.amount,
    PAY.payment_method,
    PAY.payment_date

FROM Booking B
JOIN User U ON B.user_id = U.user_id
JOIN Property P ON B.property_id = P.property_id AND P.pricepernight > 0
LEFT JOIN Payment PAY ON PAY.booking_id = B.booking_id;

-- Query with filter to test index
EXPLAIN ANALYZE
SELECT ...
FROM Booking B
JOIN User U ON ...
WHERE B.user_id = 'some-existing-id';
