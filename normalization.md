# Database Normalization — Airbnb Database

## Overview
The database design was normalized up to the **Third Normal Form (3NF)** to reduce redundancy and maintain data integrity.

---

## 1NF — First Normal Form
- All attributes have atomic (indivisible) values.
- Each table has a defined primary key.
- No repeating groups or multi-valued fields exist.

✅ Example:  
The `User` table stores one phone number per user.  
If multiple numbers are needed, a separate `User_Phone` table can be created.

---

## 2NF — Second Normal Form
- All non-key attributes depend on the entire primary key.
- Since every table uses a single-column primary key (`user_id`, `property_id`, etc.), 2NF is automatically satisfied.

✅ Example:  
In the `Booking` table, `check_in_date` and `status` both depend only on `booking_id`.

---

## 3NF — Third Normal Form
- No transitive dependencies exist.
- All attributes depend directly on the primary key and not on other non-key attributes.

✅ Example:  
In the `Payment` table, `amount` and `status` depend only on `booking_id`.  
There is no field such as `guest_name` (which would depend on the `User` table instead).

---

## Conclusion
All entities (`User`, `Property`, `Booking`, `Payment`, and `Review`) meet the requirements of 1NF, 2NF, and 3NF.  
The design ensures minimal redundancy and maintains strong referential integrity.
