# AirBnB Database Schema

This directory contains the SQL script that defines the database schema for the AirBnB clone project.

## Overview

The schema consists of six main tables:
- User
- Property
- Booking
- Payment
- Review
- Message

## Database Schema Details

### Table: User
Stores information about all users in the system, including guests, hosts, and administrators.

**Key Fields:**
- `user_id`: Primary key, UUID
- `email`: Unique email address for authentication
- `role`: Determines user permissions (guest, host, admin)

### Table: Property
Contains details about properties available for booking.

**Key Fields:**
- `property_id`: Primary key, UUID
- `host_id`: Foreign key to User table, identifies the property owner
- `pricepernight`: Base price for booking calculations

### Table: Booking
Manages reservations made by users for properties.

**Key Fields:**
- `booking_id`: Primary key, UUID
- `property_id`: Foreign key to Property table
- `user_id`: Foreign key to User table (the guest)
- `status`: Current status of booking (pending, confirmed, canceled)

### Table: Payment
Tracks payment information associated with bookings.

**Key Fields:**
- `payment_id`: Primary key, UUID
- `booking_id`: Foreign key to Booking table
- `payment_method`: Method used for payment

### Table: Review
Stores reviews and ratings submitted by users for properties they've booked.

**Key Fields:**
- `review_id`: Primary key, UUID
- `property_id`: Foreign key to Property table
- `user_id`: Foreign key to User table (reviewer)
- `rating`: Numeric rating (1-5)

### Table: Message
Manages communication between users.

**Key Fields:**
- `message_id`: Primary key, UUID
- `sender_id`: Foreign key to User table
- `recipient_id`: Foreign key to User table

## Design Decisions

1. **UUID as Primary Keys**: Using UUIDs instead of auto-incrementing integers for better security and distribution.

2. **Data Integrity Constraints**:
   - Email uniqueness for users
   - Rating constraints (1-5) for reviews
   - Date validation for bookings (end date must be after start date)

3. **Indexing Strategy**:
   - Indexed foreign keys for faster joins
   - Indexed email field for user lookups
   - Compound index on booking dates for date range queries

4. **Deletion Behavior**:
   - Cascade deletion for related records when a parent record is deleted
   - For example, when a user is deleted, all their properties, bookings, reviews, and messages are also deleted

## Usage

To create the database schema:

1. Ensure you have a PostgreSQL database installed and running
2. Run the following command:
   ```
   psql -U your_username -d your_database -f schema.sql
   ```

## Notes

- The script uses PostgreSQL-specific features like the `uuid-ossp` extension
- You may need to modify the script if you're using a different database system
- The `ON UPDATE CURRENT_TIMESTAMP` feature requires MySQL 5.6+ or equivalent in other database systems