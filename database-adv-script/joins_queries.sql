-- INNER JOIN: Retrieve all bookings and the respective users
SELECT 
    B.booking_id,
    B.start_date,
    B.end_date,
    U.first_name,
    U.last_name
FROM 
    Booking B
INNER JOIN 
    User U ON B.user_id = U.user_id;

-- LEFT JOIN: Retrieve all properties and their reviews, including properties with no reviews
SELECT 
    P.property_id,
    P.name,
    R.review_id,
    R.rating,
    R.comment
FROM 
    Property P
LEFT JOIN 
    Review R ON P.property_id = R.property_id
ORDER BY
	rating DESC;

-- FULL OUTER JOIN: Retrieve all users and all bookings
SELECT 
	U.first_name,
	U.last_name,
	B.booking_id,
	B.start_date,
	B.end_date
FROM
	booking B
FULL OUTER JOIN
	user U ON B.user_id = U.user_id;
    
-- MySQL does not support FULL OUTER JOIN directly, so we use UNION of LEFT and RIGHT JOINs
SELECT 
    U.user_id,
    U.first_name,
    B.booking_id,
    B.start_date
FROM 
    User U
LEFT JOIN 
    Booking B ON U.user_id = B.user_id

UNION

SELECT 
    U.user_id,
    U.first_name,
    B.booking_id,
    B.start_date
FROM 
    User U
RIGHT JOIN 
    Booking B ON U.user_id = B.user_id;
