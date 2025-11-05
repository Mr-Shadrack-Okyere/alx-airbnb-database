# Performance Monitoring and Refinement

For performance monitoring, I used the following commands:

```sql
SHOW PROFILE;

EXPLAIN ANALYZE
SELECT * FROM bookings
WHERE start_date BETWEEN '2021-01-01' AND '2021-12-31';
