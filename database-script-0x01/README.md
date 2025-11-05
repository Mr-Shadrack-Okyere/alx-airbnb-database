# Airbnb Database Schema (DDL)

This folder contains SQL scripts to define the Airbnb-like relational database.

## Files
- `schema.sql`: Defines all tables, relationships, and constraints.

## Instructions
1. Open your SQL client (MySQL Workbench, phpMyAdmin, or terminal).
2. Run the commands in `schema.sql`.
3. Verify that all tables are created using:
   ```sql
   SHOW TABLES;

# SQL Joins Tasks

This folder contains SQL queries for Task 0 — Write Complex Queries with Joins.

## Files

- joins_queries.sql — contains the actual SQL queries

## What each query does

### INNER JOIN
Gets only bookings that are linked to users.
If a booking has no user — it will NOT appear.

### LEFT JOIN
Returns ALL properties, and their reviews if available.
If a property has no review — it still shows.

### FULL OUTER JOIN
Returns ALL users and ALL bookings.
Even
