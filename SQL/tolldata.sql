-- Create a new user
CREATE USER backup_operator WITH PASSWORD 'K9#mPqL$2vX@nR';

-- Create a role named 'backup'
CREATE ROLE backup;

-- Create a new database
CREATE DATABASE tolldata;

-- Create a dedicated schema to logically organize database objects
CREATE SCHEMA toll;

-- ================================
-- Role & Privilege Management
-- ================================

-- Allow the backup role to connect to the tolldata database
GRANT CONNECT ON DATABASE tolldata TO backup;

-- Grant read-only access on all existing tables in the toll schema
GRANT SELECT ON ALL TABLES IN SCHEMA toll TO backup;

-- Assign the backup role to the backup_operator user
GRANT backup TO backup_operator;

-- Verify privileges granted to the backup role
SELECT grantee, privilege_type
FROM information_schema.role_table_grants
WHERE grantee = 'backup';

-- ================================
-- Table Creation (Data Restore Target)
-- ================================

-- Create billing table to store customer billing data restored from CSV
CREATE TABLE billing (
  customerid INT,
  category VARCHAR(50),
  country VARCHAR(50),
  industry VARCHAR(50),
  month DATE,
  billedamount INT
);

-- Verify data insertion by previewing sample records
SELECT * FROM billing LIMIT 5;


-- ================================
-- View Creation
-- ================================

-- Create a view to simplify access to commonly used billing fields
CREATE VIEW basicbilldetails AS
SELECT customerid, month, billedamount
FROM billing;

-- Validate the view output
SELECT * FROM basicbilldetails LIMIT 5;


-- ================================
-- Query Performance Analysis (Before Index)
-- ================================

-- Analyze query execution plan and runtime before indexing
EXPLAIN ANALYZE
SELECT * 
FROM billing
WHERE billedamount = 19929;


-- ================================
-- Index Creation
-- ================================

-- Create an index on billedamount to optimize lookup performance
CREATE INDEX billingamount ON billing(billedamount);


-- ================================
-- Query Performance Analysis (After Index)
-- ================================

-- Re-run the same query to observe performance improvement using the index
EXPLAIN ANALYZE
SELECT * 
FROM billing
WHERE billedamount = 19929;
