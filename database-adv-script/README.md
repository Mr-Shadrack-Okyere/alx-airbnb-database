# Task 0 - Write Complex Joins

This task contains SQL queries for:
- INNER JOIN to get all bookings with their users
- LEFT JOIN to get all properties and their reviews (including those with no reviews)
- FULL OUTER JOIN to get all users and all bookings (even if not linked)

All queries are inside the file: joins_queries.sql

--

## Task 1 - Practice Subqueries

This task contains two SQL subqueries:

- A query to retrieve properties where the average rating is greater than 4.0 (non-correlated subquery)
- A query to retrieve users who have made more than 3 bookings (correlated subquery)

All queries are stored in the file: `subqueries.sql`

--

# Aggregations and Window Functions

This task includes two queries:

1. Use `COUNT()` and `GROUP BY` to find the total number of bookings per user.
2. Use a window function (`ROW_NUMBER()`) to rank properties based on the total number of bookings they have received.

## Files

| File | Description |
|------|-------------|
| aggregations_and_window_functions.sql | Contains SQL queries for aggregations and window functions |

## Requirements

- Use `COUNT()`
- Use `GROUP BY`
- Use a window function: `ROW_NUMBER()` or `RANK()`
