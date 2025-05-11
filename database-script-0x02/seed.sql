-- AirBnB Database Sample Data
-- This script populates the AirBnB database with sample data

-- Clear existing data (if any)
DELETE FROM Message;
DELETE FROM Review;
DELETE FROM Payment;
DELETE FROM Booking;
DELETE FROM Property;
DELETE FROM User;

-- Insert sample users
-- Note: In a real application, password_hash would be properly hashed values
INSERT INTO User (user_id, first_name, last_name, email, password_hash, phone_number, role, created_at) VALUES
('a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a11', 'John', 'Doe', 'john.doe@example.com', 'hashed_password_1', '+1-555-123-4567', 'host', '2024-01-15 08:30:00'),
('a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a12', 'Jane', 'Smith', 'jane.smith@example.com', 'hashed_password_2', '+1-555-987-6543', 'guest', '2024-01-20 10:15:00'),
('a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a13', 'Robert', 'Johnson', 'robert.johnson@example.com', 'hashed_password_3', '+1-555-456-7890', 'host', '2024-01-22 14:45:00'),
('a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a14', 'Sarah', 'Williams', 'sarah.williams@example.com', 'hashed_password_4', '+1-555-789-0123', 'guest', '2024-01-25 09:20:00'),
('a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a15', 'Michael', 'Brown', 'michael.brown@example.com', 'hashed_password_5', '+1-555-321-6547', 'guest', '2024-01-27 16:30:00'),
('a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a16', 'Emily', 'Davis', 'emily.davis@example.com', 'hashed_password_6', '+1-555-852-9631', 'host', '2024-01-30 11:10:00'),
('a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a17', 'David', 'Miller', 'david.miller@example.com', 'hashed_password_7', '+1-555-741-8520', 'admin', '2024-01-10 07:45:00');

-- Insert sample properties
INSERT INTO Property (property_id, host_id, name, description, location, pricepernight, created_at, updated_at) VALUES
('b0eebc99-9c0b-4ef8-bb6d-6bb9bd380a11', 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a11', 'Cozy Downtown Apartment', 'A beautiful apartment in the heart of the city with amazing views.', 'New York, NY', 120.00, '2024-02-01 09:00:00', '2024-02-01 09:00:00'),
('b0eebc99-9c0b-4ef8-bb6d-6bb9bd380a12', 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a11', 'Beach House Getaway', 'Relax in this stunning beach house just steps from the ocean.', 'Miami, FL', 250.00, '2024-02-03 11:30:00', '2024-02-05 14:20:00'),
('b0eebc99-9c0b-4ef8-bb6d-6bb9bd380a13', 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a13', 'Mountain Cabin Retreat', 'Escape to this peaceful cabin surrounded by nature and wildlife.', 'Denver, CO', 180.00, '2024-02-05 15:45:00', '2024-02-06 08:15:00'),
('b0eebc99-9c0b-4ef8-bb6d-6bb9bd380a14', 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a13', 'Modern City Loft', 'Stylish loft in a trendy neighborhood with great amenities.', 'Chicago, IL', 150.00, '2024-02-10 10:00:00', '2024-02-12 16:30:00'),
('b0eebc99-9c0b-4ef8-bb6d-6bb9bd380a15', 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a16', 'Luxury Penthouse Suite', 'Experience luxury living with this high-end penthouse with panoramic views.', 'Los Angeles, CA', 350.00, '2024-02-15 13:20:00', '2024-02-16 09:45:00'),
('b0eebc99-9c0b-4ef8-bb6d-6bb9bd380a16', 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a16', 'Charming Country Cottage', 'Quaint cottage nestled in the countryside for a peaceful retreat.', 'Austin, TX', 135.00, '2024-02-18 14:10:00', '2024-02-20 11:25:00');

-- Insert sample bookings
INSERT INTO Booking (booking_id, property_id, user_id, start_date, end_date, total_price, status, created_at) VALUES
('c0eebc99-9c0b-4ef8-bb6d-6bb9bd380a11', 'b0eebc99-9c0b-4ef8-bb6d-6bb9bd380a11', 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a12', '2024-03-10', '2024-03-15', 600.00, 'confirmed', '2024-02-20 10:30:00'),
('c0eebc99-9c0b-4ef8-bb6d-6bb9bd380a12', 'b0eebc99-9c0b-4ef8-bb6d-6bb9bd380a12', 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a14', '2024-03-05', '2024-03-12', 1750.00, 'confirmed', '2024-02-21 09:15:00'),
('c0eebc99-9c0b-4ef8-bb6d-6bb9bd380a13', 'b0eebc99-9c0b-4ef8-bb6d-6bb9bd380a13', 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a15', '2024-03-20', '2024-03-25', 900.00, 'pending', '2024-02-22 14:45:00'),
('c0eebc99-9c0b-4ef8-bb6d-6bb9bd380a14', 'b0eebc99-9c0b-4ef8-bb6d-6bb9bd380a14', 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a12', '2024-04-01', '2024-04-05', 600.00, 'confirmed', '2024-02-25 11:20:00'),
('c0eebc99-9c0b-4ef8-bb6d-6bb9bd380a15', 'b0eebc99-9c0b-4ef8-bb6d-6bb9bd380a15', 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a14', '2024-04-10', '2024-04-15', 1750.00, 'canceled', '2024-02-26 16:30:00'),
('c0eebc99-9c0b-4ef8-bb6d-6bb9bd380a16', 'b0eebc99-9c0b-4ef8-bb6d-6bb9bd380a16', 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a15', '2024-03-15', '2024-03-20', 675.00, 'confirmed', '2024-02-28 08:45:00');

-- Insert sample payments
INSERT INTO Payment (payment_id, booking_id, amount, payment_date, payment_method) VALUES
('d0eebc99-9c0b-4ef8-bb6d-6bb9bd380a11', 'c0eebc99-9c0b-4ef8-bb6d-6bb9bd380a11', 600.00, '2024-02-20 11:00:00', 'credit_card'),
('d0eebc99-9c0b-4ef8-bb6d-6bb9bd380a12', 'c0eebc99-9c0b-4ef8-bb6d-6bb9bd380a12', 1750.00, '2024-02-21 09:45:00', 'paypal'),
('d0eebc99-9c0b-4ef8-bb6d-6bb9bd380a14', 'c0eebc99-9c0b-4ef8-bb6d-6bb9bd380a14', 600.00, '2024-02-25 12:00:00', 'credit_card'),
('d0eebc99-9c0b-4ef8-bb6d-6bb9bd380a15', 'c0eebc99-9c0b-4ef8-bb6d-6bb9bd380a15', 1750.00, '2024-02-26 17:00:00', 'stripe'),
('d0eebc99-9c0b-4ef8-bb6d-6bb9bd380a16', 'c0eebc99-9c0b-4ef8-bb6d-6bb9bd380a16', 675.00, '2024-02-28 09:15:00', 'paypal');

-- Insert sample reviews
INSERT INTO Review (review_id, property_id, user_id, rating, comment, created_at) VALUES
('e0eebc99-9c0b-4ef8-bb6d-6bb9bd380a11', 'b0eebc99-9c0b-4ef8-bb6d-6bb9bd380a11', 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a12', 5, 'Amazing apartment! Great location and very clean.', '2024-03-16 10:30:00'),
('e0eebc99-9c0b-4ef8-bb6d-6bb9bd380a12', 'b0eebc99-9c0b-4ef8-bb6d-6bb9bd380a12', 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a14', 4, 'Beautiful beach house, just a bit far from restaurants.', '2024-03-13 14:20:00'),
('e0eebc99-9c0b-4ef8-bb6d-6bb9bd380a14', 'b0eebc99-9c0b-4ef8-bb6d-6bb9bd380a14', 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a12', 5, 'Loved the loft! Very stylish and comfortable.', '2024-04-06 09:45:00'),
('e0eebc99-9c0b-4ef8-bb6d-6bb9bd380a16', 'b0eebc99-9c0b-4ef8-bb6d-6bb9bd380a16', 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a15', 4, 'Charming cottage, perfect for a weekend getaway!', '2024-03-21 11:15:00');

-- Insert sample messages
INSERT INTO Message (message_id, sender_id, recipient_id, message_body, sent_at) VALUES
('f0eebc99-9c0b-4ef8-bb6d-6bb9bd380a11', 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a12', 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a11', 'Hi, is the apartment available for the dates I selected?', '2024-02-18 09:30:00'),
('f0eebc99-9c0b-4ef8-bb6d-6bb9bd380a12', 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a11', 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a12', 'Yes, it is available! Would you like to book it?', '2024-02-18 10:15:00'),
('f0eebc99-9c0b-4ef8-bb6d-6bb9bd380a13', 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a14', 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a13', 'Does the cabin have WiFi?', '2024-02-20 14:00:00'),
('f0eebc99-9c0b-4ef8-bb6d-6bb9bd380a14', 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a13', 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a14', 'Yes, we have high-speed WiFi available.', '2024-02-20 14:30:00'),
('f0eebc99-9c0b-4ef8-bb6d-6bb9bd380a15', 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a15', 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a16', 'Is check-in available after 8 PM?', '2024-02-25 18:45:00'),
('f0eebc99-9c0b-4ef8-bb6d-6bb9bd380a16', 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a16', 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a15', 'Yes, we have a self-check-in system available 24/7.', '2024-02-25 19:20:00');