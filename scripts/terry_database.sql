/*
Create Database and Schemas

Objective:
	This script creates a new database named 'Datawarehouse' after checking it already exists.
	if the database already exists it is dropped and recreated. The script also sets up three schemas within the database: 'bronze','silver' 
	and 'gold'.
WARNING:
	Running this script will drop the entire 'Datawarehouse' database if it exists.
	All data in the database will be permanently deleted. 
	Please ensure you have proper backups before running this script.
*/
USE master;
GO

IF EXISTS (SELECT * FROM sys.databases WHERE name = 'Datawarehouse')
BEGIN
	ALTER DATABASE Datawarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
	DROP DATABASE Datawarehouse;
END
GO
CREATE DATABASE Datawarehouse;
GO
USE Datawarehouse;
GO
CREATE SCHEMA bronze;
GO
CREATE SCHEMA silver;
GO
CREATE SCHEMA gold;
GO
