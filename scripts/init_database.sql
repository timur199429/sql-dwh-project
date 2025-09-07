/*
====
Create Database and Schemas
====
Script Purpose:
	This script create a new database named 'education' after checking if it already exists.
*/

-- 1. Connect to db (not 'education')

-- 2. Terminate connections to 'education'
SELECT pg_terminate_backend(pid)
FROM pg_stat_activity
WHERE datname = 'education'
  AND pid <> pg_backend_pid();

-- 3. Drop the 'education' database
DROP DATABASE IF EXISTS education;


-- 4. Create the education database owned by user 'gen_user'
CREATE DATABASE education
    WITH OWNER = gen_user;

-- 5. Connect to 'education' db

-- 6. Create schemas
CREATE SCHEMA bronze;
CREATE SCHEMA silver;
CREATE SCHEMA gold;
