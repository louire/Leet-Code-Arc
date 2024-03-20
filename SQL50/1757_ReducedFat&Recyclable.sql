-- 1757. Recyclable and Low Fat Products
-- Easy
-- Topics
-- Companies
-- SQL Schema
-- Pandas Schema
-- Table: Products

-- +-------------+---------+
-- | Column Name | Type    |
-- +-------------+---------+
-- | product_id  | int     |
-- | low_fats    | enum    |
-- | recyclable  | enum    |
-- +-------------+---------+
-- product_id is the primary key (column with unique values) for this table.
-- low_fats is an ENUM (category) of type ('Y', 'N') where 'Y' means this product is low fat and 'N' means it is not.
-- recyclable is an ENUM (category) of types ('Y', 'N') where 'Y' means this product is recyclable and 'N' means it is not.
 

-- Write a solution to find the ids of products that are both low fat and recyclable.

-- Return the result table in any order.

-- The result format is in the following example.



-- /* Write your T-SQL query statement below */
select product_id from Products
where low_fats = 'Y' and recyclable = 'Y'

-- It may look too simple, but this one works as a filter as many Developers don't deal with SQL and are unaware of these kind
-- of syntax of WHERE plus AND for in-depth queries.