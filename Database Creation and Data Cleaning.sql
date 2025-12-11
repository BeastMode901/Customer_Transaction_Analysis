-- Created a Database--
CREATE database Customer_Transaction;

-- Used the Database Created--
USE Customer_Transaction;


-- Data Cleaning--

-- Change the column type to DATE
ALTER TABLE customer_transactions
MODIFY COLUMN TransactionDate Date;

-- Convert text dates to proper DATE format
UPDATE customer_transactions
SET TransactionDate = STR_TO_DATE(TransactionDate, '%c/%e/%Y');

-- Renamed Customer ID to Customer_ID--
ALTER TABLE customer_transactions
RENAME COLUMN `Customer ID` TO Customer_ID;

-- Renamed TransactionDate to Transaction_Date
ALTER TABLE customer_transactions
RENAME COLUMN TransactionDate TO Transaction_Date;

-- Renamed ProductCategory to Product_Category
ALTER TABLE customer_transactions
RENAME COLUMN ProductCategory TO Product_Category;

-- Renamed PaymentMethod to Payment_Method
ALTER TABLE customer_transactions
RENAME COLUMN PaymentMethod TO Payment_Method;

-- Renamed IsReturningCustomer to Is_Returning_Customer
ALTER TABLE customer_transactions
RENAME COLUMN IsReturningCustomer TO Is_Returning_Customer;
