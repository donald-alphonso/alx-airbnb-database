# AirBnB Database Sample Data

This directory contains SQL scripts to populate the AirBnB database with sample data for testing and development purposes.

## Overview

The `seed.sql` script inserts realistic sample data into all tables of the database:
- 7 users with different roles (guests, hosts, admin)
- 6 properties of various types and locations
- 6 bookings with different statuses
- 5 payments using different payment methods
- 4 reviews with ratings and comments
- 6 messages between users

## Sample Data Details

### Users
The sample data includes:
- 3 hosts who own properties
- 3 guests who make bookings
- 1 admin user

Each user has a unique email address, phone number, and role.

### Properties
The sample properties represent different types of accommodations:
- Apartments
- Beach houses
- Mountain cabins
- City lofts
- Luxury penthouses
- Country cottages

They are located in different cities across the US, with prices ranging from $120 to $350 per night.

### Bookings
The bookings demonstrate different scenarios:
- Confirmed bookings
- Pending bookings
- Canceled bookings

Each booking includes start and end dates, as well as a calculated total price based on the number of nights and the property's price per night.

### Payments
The payment data shows transactions for confirmed and canceled bookings using different payment methods:
- Credit card
- PayPal
- Stripe

Note that pending bookings do not have associated payments.

### Reviews
The reviews showcase feedback from guests after their stays, including:
- Ratings (on a scale of 1-5)
- Comments describing their experience

### Messages
The message data demonstrates communication between hosts and guests, including:
- Initial inquiries about properties
- Questions about amenities
- Check-in information

## Usage

To populate your database with this sample data:

1. First, ensure you have created the database schema using the script in the `database-script-0x01` directory
2. Then run the following command:
   ```
   psql -U your_username -d your_database -f seed.sql
   ```

## Notes

- All sample data uses predefined UUIDs for easier reference and testing
- In a production environment, password hashes would be properly secured (current values are placeholders)
- The dates are set in early 2024 - you may want to adjust them based on when you're using this data
- The relationships between entities are consistent (e.g., bookings reference valid users and properties)