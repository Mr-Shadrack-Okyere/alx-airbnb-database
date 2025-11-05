# Index Performance Testing

## Why we added indexes
We added indexes on columns that are used very often in queries, especially in:
- WHERE conditions
- JOIN conditions
- ORDER BY clauses

Examples:
- `bookings.user_id`
- `bookings.property_id`
- `users.email`
- `properties.city`

These columns are important because they help improve performance when searching for users, properties or filtering bookings.

## Performance Check

### Before adding indexes
Example test:
```sql
EXPLAIN SELECT * FROM bookings WHERE user_id = 5;
