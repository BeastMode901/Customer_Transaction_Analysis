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

-- Column Descriptions
	-- Customer_ID = Unique identifier for each customer
	-- Age = Age of customer
	-- Gender = Customer's gender (Male or Female)
	-- Transaction_Date = Date when the transaction occurred
	-- Amount = Total charge for the transaction
	-- Quantity = Number of items purchased in the transaction
	-- Product_Category = Category of the purchased item
	-- Payment_Method = Method used to pay for the transaction
	-- Channel = Purchase channel (e.g., Online, In-Store)
	-- Country = Country where the transaction took place
	-- State = U.S. state where the transaction took place
	-- Is_Returning_Customer = Indicates whether the customer is returning or new

-- Customer Transaction Analysis--

-- 1. Which state generated the highest total revenue?
		SELECT State, ROUND(SUM(Amount),2) AS Total_Revenue 
        FROM customer_transactions
        GROUP BY State
        ORDER BY Total_Revenue DESC
        LIMIT 1;
        
-- 2. What is the average transaction amount by product category?
		SELECT Product_Category, ROUND(AVG(Amount),2) AS Average_Transaction_Amount
        FROM customer_transactions
        GROUP BY Product_Category
        ORDER BY Average_Transaction_Amount DESC;

-- 3. Which product categories have sold the most items?
		SELECT Product_Category, SUM(Quantity) AS Total_Quantity
        FROM customer_transactions
        GROUP BY Product_Category
        ORDER BY Total_Quantity DESC;
        
-- 4. Which sales channel generates the most revenue (Online vs In-Store)?
        SELECT Channel, ROUND(SUM(Amount),2) AS Total_Revenue
        FROM customer_transactions
        GROUP BY Channel
        ORDER BY Total_Revenue DESC;
        
-- 5. How does average transaction amount vary by customer age group?
		SELECT
		CASE
			WHEN Age BETWEEN 18 AND 25 THEN '18-25'
			WHEN Age BETWEEN 26 AND 35 THEN '26-35'
			WHEN Age BETWEEN 36 AND 45 THEN '36-45'
			ELSE '46+'
		END AS Age_Group,
			ROUND(AVG(Amount), 2) AS Average_Amount
		FROM customer_transactions
		GROUP BY Age_Group
		ORDER BY Average_Amount DESC;

-- 6. What is the distribution of returning vs new customers?
        SELECT Count(*) AS Total_Customers,
			CASE
            WHEN Is_Returning_Customer = 1 THEN 'Returning Customer'
            WHEN Is_Returning_Customer = 0 THEN 'New Customer'
            END AS Customer_Status
		FROM customer_transactions
        GROUP BY Customer_Status
        ORDER BY Total_Customers DESC;
        
-- 7. Which payment method is most frequently used by customers?
		SELECT Payment_Method, Count(*) AS Total FROM customer_transactions
        GROUP BY Payment_Method
        ORDER BY Total DESC;

-- 8. What is the most common product category among each gender?
		WITH Ranked AS (
		SELECT 
			Gender,
			Product_Category,
			COUNT(*) AS Category_Count,
			ROW_NUMBER() OVER (PARTITION BY Gender ORDER BY COUNT(*) DESC) AS rn
		FROM customer_transactions
		GROUP BY Gender, Product_Category
						)
		SELECT Gender, Product_Category, Category_Count
		FROM Ranked
		WHERE rn = 1;

-- 9. Which sales channel is most popular in each U.S. state?
		WITH Ranked AS (
		SELECT 
			State,
			Channel,
			COUNT(*) AS TransactionCount,
			ROW_NUMBER() OVER (PARTITION BY State ORDER BY COUNT(*) DESC) AS rn
		FROM customer_transactions
		GROUP BY State, Channel
						)
		SELECT State, Channel
		FROM Ranked
		WHERE rn = 1
		ORDER BY State;

-- 10. What is the average transaction sale per year?
		SELECT EXTRACT(Year FROM Transaction_Date) AS Year, ROUND(AVG(Amount),2) AS Average_Sales
		FROM customer_transactions
		GROUP BY Year
		ORDER BY Average_Sales DESC;