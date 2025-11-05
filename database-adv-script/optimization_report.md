### Optimization Report

Task: Optimize a complex query joining bookings, users, properties and payments.

#### Inefficiency Detected
- we were selecting unnecessary columns
- we joined users & properties even though not all values were required
- EXPLAIN ANALYZE showed high join cost

#### Optimization Applied
- selected only important columns
- reduced number of joins
- used EXPLAIN ANALYZE before and after

#### Result
The optimized query uses fewer joins and should return faster execution times.
