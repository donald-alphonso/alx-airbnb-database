# Database Normalization Analysis

## Introduction

This document outlines the normalization process applied to our AirBnB-like database design. The goal is to ensure our database schema meets the Third Normal Form (3NF) requirements, reducing redundancy and improving data integrity.

## Normalization Process

### Understanding the Normal Forms

1. **First Normal Form (1NF)**:
   - Each table has a primary key
   - Each column contains atomic values
   - No repeating groups or arrays

2. **Second Normal Form (2NF)**:
   - The database is in 1NF
   - All non-key attributes are fully functionally dependent on the primary key

3. **Third Normal Form (3NF)**:
   - The database is in 2NF
   - All attributes are directly dependent on the primary key and not on other non-key attributes

## Analysis of Current Schema

Let's analyze each table in our database schema to verify it meets the 3NF requirements:

### User Table
- **Primary Key**: user_id
- **Attributes**: first_name, last_name, email, password_hash, phone_number, role, created_at

**Analysis**: Each attribute depends only and directly on the primary key (user_id). There are no transitive dependencies. This table is already in 3NF.

### Property Table
- **Primary Key**: property_id
- **Attributes**: host_id, name, description, location, pricepernight, created_at, updated_at

**Analysis**: All attributes depend directly on property_id. The host_id is a foreign key to the User table. This table is in 3NF.

### Booking Table
- **Primary Key**: booking_id
- **Attributes**: property_id, user_id, start_date, end_date, total_price, status, created_at

**Analysis**: While total_price could potentially be derived from the property's pricepernight and the booking duration, it may include special rates, discounts, or additional fees. Therefore, storing it directly is acceptable and doesn't violate 3NF. All attributes depend directly on booking_id.

### Payment Table
- **Primary Key**: payment_id
- **Attributes**: booking_id, amount, payment_date, payment_method

**Analysis**: All attributes depend directly on payment_id. This table is in 3NF.

### Review Table
- **Primary Key**: review_id
- **Attributes**: property_id, user_id, rating, comment, created_at

**Analysis**: All attributes depend directly on review_id. This table is in 3NF.

### Message Table
- **Primary Key**: message_id
- **Attributes**: sender_id, recipient_id, message_body, sent_at

**Analysis**: All attributes depend directly on message_id. This table is in 3NF.

## Recommended Enhancements

While our current schema already conforms to 3NF, we can make some enhancements to improve the design further:

### 1. Separate Location Information

If the "location" field in the Property table contains multiple pieces of information (country, city, address, etc.), we should normalize it into a separate Address table:

```
Address Table:
- address_id: Primary Key, UUID
- property_id: Foreign Key, references Property
- street_address: VARCHAR
- city: VARCHAR
- state_province: VARCHAR
- postal_code: VARCHAR
- country: VARCHAR
```

### 2. Payment Method Details

If we need to store detailed information about payment methods, we could create a separate table:

```
PaymentMethod Table:
- payment_method_id: Primary Key, UUID
- name: VARCHAR (e.g., "credit_card", "paypal", "stripe")
- description: VARCHAR

# Update Payment Table:
- Replace payment_method field with payment_method_id (FK)
```

### 3. Property Amenities

To handle multiple amenities per property without violating 1NF, we can create new tables:

```
Amenity Table:
- amenity_id: Primary Key, UUID
- name: VARCHAR
- description: VARCHAR

PropertyAmenity Table:
- property_id: Foreign Key, references Property
- amenity_id: Foreign Key, references Amenity
- Primary Key: (property_id, amenity_id)
```

## Conclusion

Our existing database schema already satisfies the requirements for Third Normal Form (3NF). Each table has a clearly defined primary key, and all attributes depend directly on their respective primary keys without transitive dependencies.

The recommended enhancements are not required to achieve 3NF but would further improve the database design by:

1. Breaking down composite attributes (location)
2. Providing better organization for enumerated types (payment_method)
3. Handling many-to-many relationships properly (property amenities)

These enhancements would make the database more flexible and easier to maintain as the application grows and requirements evolve.