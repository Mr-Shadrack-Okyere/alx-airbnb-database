# ERD Requirements

## Entities
- **User:** Represents guests and hosts.
- **Property:** Represents listings or accommodations.
- **Booking:** Represents reservations made by guests.
- **Payment:** Represents payment records for bookings.
- **Review:** Represents guest feedback after a stay.

## Relationships
- One User (host) can have many Properties.
- One User (guest) can make many Bookings.
- Each Booking is linked to one Property.
- Each Booking has one Payment.
- Each Booking can have one Review.
- Each Review is written by one User (guest).
![ERD](https://github.com/user-attachments/assets/b878caae-8a0f-41af-83bc-7823eede80b9)
