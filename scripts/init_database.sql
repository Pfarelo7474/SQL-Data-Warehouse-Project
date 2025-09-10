/*
======================================================================
Create Database and Schemas 
======================================================================
Script Purpose: 
    This script creates a new database named 'test_db' after checking if it already exists. If the database exists, 
    it is dropped and recreated.Additionally, the script sets up three schemas within the databse: 'bronze', 'silver',
    and 'gold'. 

Warning :
    Running this script will drop the entire 'test_db' database if it exists. 
    All data in the database will be permanently deleted. Proceed with caution
    and ensure you have proper backups before running this script.
*/

USE test_db;


-- Drop and recreate the 'test_db' database
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'test_db')
BEGIN
    ALTER DATABASE test_db SET SINGLE USER WITH ROLLBACK IMMEDIATE:
    DROP DATABASE test_db;
END;
GO

-- Create the 'test_db' database
CREATE DATABASE test_db ;
GO

USE test_db;
GO

-- Create Schemas
CREATE SCHEMA bronze;
GO

CREATE SCHEMA silver;
GO

CREATE SCHEMA gold;
GO
