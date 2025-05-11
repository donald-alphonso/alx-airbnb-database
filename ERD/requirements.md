# Entity-Relationship Diagram for AirBnB Database

## Project Overview
This diagram represents the database structure for an AirBnB-like application. It includes the main entities required to manage users, properties, bookings, payments, reviews, and messages.

## Entities and Attributes

### 1. User
- **user_id**: Primary Key, unique identifier (UUID)
- **first_name**: User's first name
- **last_name**: User's last name
- **email**: Unique email address
- **password_hash**: Hashed password
- **phone_number**: Phone number (optional)
- **role**: Role (guest, host, admin)
- **created_at**: Account creation date

### 2. Property
- **property_id**: Primary Key, unique identifier (UUID)
- **host_id**: Foreign Key to User (the host)
- **name**: Property name
- **description**: Detailed description
- **location**: Property location
- **pricepernight**: Price per night
- **created_at**: Creation date
- **updated_at**: Last update date

### 3. Booking
- **booking_id**: Primary Key, unique identifier (UUID)
- **property_id**: Foreign Key to Property
- **user_id**: Foreign Key to User (the guest)
- **start_date**: Stay start date
- **end_date**: Stay end date
- **total_price**: Total price
- **status**: Status (pending, confirmed, canceled)
- **created_at**: Creation date

### 4. Payment
- **payment_id**: Primary Key, unique identifier (UUID)
- **booking_id**: Foreign Key to Booking
- **amount**: Payment amount
- **payment_date**: Payment date
- **payment_method**: Method (credit_card, paypal, stripe)

### 5. Review
- **review_id**: Primary Key, unique identifier (UUID)
- **property_id**: Foreign Key to Property
- **user_id**: Foreign Key to User (reviewer)
- **rating**: Rating (1 to 5)
- **comment**: Review comment
- **created_at**: Creation date

### 6. Message
- **message_id**: Primary Key, unique identifier (UUID)
- **sender_id**: Foreign Key to User (sender)
- **recipient_id**: Foreign Key to User (recipient)
- **message_body**: Message content
- **sent_at**: Sent date

## Relationships

1. **User-Property**: A user (host) can own multiple properties, but each property has only one host.
   - Cardinality: 1:N (one-to-many)

2. **Property-Booking**: A property can have multiple bookings, but each booking is for only one property.
   - Cardinality: 1:N (one-to-many)

3. **User-Booking**: A user can make multiple bookings, but each booking is made by only one user.
   - Cardinality: 1:N (one-to-many)

4. **Booking-Payment**: A booking can have one payment, and each payment is associated with only one booking.
   - Cardinality: 1:1 (one-to-one)

5. **User-Review**: A user can leave multiple reviews, but each review is left by only one user.
   - Cardinality: 1:N (one-to-many)

6. **Property-Review**: A property can receive multiple reviews, but each review is for only one property.
   - Cardinality: 1:N (one-to-many)

7. **User-Message**: A user can send and receive multiple messages.
   - A user (as sender) can send multiple messages.
   - A user (as recipient) can receive multiple messages.
   - Cardinality: M:N (many-to-many)

## ER Diagram

![AirBnB ER Diagram](./airbnb_er_diagram.png)

## Constraints

1. User email addresses must be unique.
2. Review ratings must be between 1 and 5.
3. Booking end dates must be after start dates.
4. Booking status can only be "pending", "confirmed", or "canceled".
5. Payment methods are limited to "credit_card", "paypal", and "stripe".

## Design Approach

This database design follows these key principles:

1. **Normalization**: The schema follows the Third Normal Form (3NF) to minimize redundancy and maintain data integrity.

2. **Relationships**: Clear relationships are established between entities to represent the business logic of an accommodation rental platform.

3. **Constraints**: Appropriate constraints are defined to ensure data validity and integrity.

4. **Indexing**: Primary keys are indexed for optimal performance, and additional indexes are added on frequently queried fields.

## Implementation Notes

- UUID type is used for all primary keys to ensure uniqueness across distributed systems.
- Timestamps are used to track creation and update times.
- Enumerated types are used for fields with a limited set of possible values.
- All sensitive data (like passwords) are stored in hashed format.