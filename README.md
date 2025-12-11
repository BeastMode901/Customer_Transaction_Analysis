# Customer Transaction Analysis

## Project Overview
This project analyzes a customer transactions dataset to uncover insights about state-level revenue, product performance, customer behavior, sales channels, and payment preferences. Using SQL and Power BI, I explored how different factors—such as age, gender, product category, payment method, and sales channel—impact spending patterns and overall business performance. The goal of this project was to transform raw transactional data into meaningful insights that support decision-making, marketing strategy, and customer segmentation.

## 🗄️ Database
- **Database Name:** `Customer_Transaction`  
- **Table Name:** `customer_transactions`  

### Columns
- `Customer_ID` – Unique identifier for each customer  
- `Age` – Age of the customer  
- `Gender` – Customer's gender (Male or Female)  
- `Transaction_Date` – Date when the transaction occurred  
- `Amount` – Total charge for the transaction  
- `Quantity` – Number of items purchased in the transaction  
- `Product_Category` – Category of the purchased item  
- `Payment_Method` – Method used to pay for the transaction  
- `Channel` – Purchase channel (e.g., Online, In-Store)  
- `Country` – Country where the transaction took place  
- `State` – U.S. state where the transaction took place  
- `Is_Returning_Customer` – Indicates whether the customer is returning or new  

---

## Files Included
- **`Customer_Transactions.csv`** – Original dataset  
- **`Customer_Transactions.sql`** – SQL script used to analyze the table  
- **`Database Creation and Data Cleaning.sql`** – SQL script to create the database and clean the dataset  
- **`Analysis Questions.sql`** – Analysis questions  
- **`Analysis Solutions.sql`** – SQL queries with results of each analysis  
- **`Customer_Transactions.pbix`** – Power BI dashboard visualizing all findings  

---

## Analysis Questions
This project answers the following analytical questions:

1. Which state generated the highest total revenue?  
2. What is the average transaction amount by product category?  
3. Which product categories have sold the most items?  
4. Which sales channel generates the most revenue (Online vs. In-Store)?  
5. How does average transaction amount vary by customer age group?  
6. What is the distribution of returning vs new customers?  
7. Which payment method is most frequently used by customers?  
8. What is the most common product category among each gender?  
9. Which sales channel is most popular in each U.S. state?  
10. What is the average transaction sale per year?

---

## Key Insights

- Alabama generated the highest total revenue, exceeding $700K, making it the top-performing state.
- The Toys category had the highest average transaction amount (around $770K) and the highest number of units sold, while Beauty had the lowest average transaction amount (around $730K).
- Online shopping generated slightly more revenue than in-store purchases, although the difference was not significant.
- Customers aged 18–25 had the highest average spending compared to all other age groups.
- There are more new customers than returning customers in the dataset.
- PayPal was the most frequently used payment method, with credit card usage being the lowest.
- Male customers showed a strong preference for purchasing Toys, while female customers leaned more toward Beauty products.
- Across all states, 13 states favored Online shopping compared to 10 states that favored In-Store shopping.
- The average transaction amount in 2024 was higher than in 2023, showing growth in customer spending.

---
