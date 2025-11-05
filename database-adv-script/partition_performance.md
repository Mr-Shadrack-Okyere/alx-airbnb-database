# Partitioning Performance Report

To optimize slow queries on the Booking table, I partitioned the table using:

`PARTITION BY RANGE (YEAR(start_date))`

Partitioning by year reduces the amount of scanned data when filtering by date.

### Before Partitioning
Queries scanning bookings by year had to scan the entire table.

### After Partitioning
Using:

```sql
EXPLAIN ANALYZE
SELECT * FROM bookings_partitioned
WHERE start_date BETWEEN '2021-01-01' AND '2021-12-31';
