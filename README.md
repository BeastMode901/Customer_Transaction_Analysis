# 📊 Customer Transactions Analysis

## 📝 Project Overview
This project analyzes a customer transactions dataset to uncover insights about state-level revenue, product performance, customer behavior, sales channels, and payment preferences. Using SQL and Power BI, I explored how different factors—such as age, gender, product category, payment method, and sales channel—impact spending patterns and overall business performance.  
The goal of this project was to transform raw transactional data into meaningful insights that support decision-making, marketing strategy, and customer segmentation.

---

## 🗄️ Database
- **Database Name:** `Customer_Transactions_Project`  
- **Table Name:** `customer_transactions`  

### **Columns**
- `Transaction_ID` – Unique identifier for each transaction  
- `Customer_ID` – Unique customer identifier  
- `Age` – Customer age  
- `Gender` – Customer gender  
- `State` – U.S. state where the transaction occurred  
- `Product_Category` – Product category purchased (e.g., Toys, Beauty, Clothing)  
- `Quantity` – Number of items purchased  
- `Amount` – Transaction amount in USD  
- `Channel` – Sales channel (Online or In-Store)  
- `Payment_Method` – Payment type used (Credit Card, PayPal, Cash, etc.)  
- `Is_Returning_Customer` – Indicates whether the customer is new or returning  
- `Transaction_Date` – Date of the transaction  

---

## 🔍 Analysis Questions
This project answers the following analytical questions:

1. Which state generated the highest total revenue?  
2. What is the average transaction amount by product category?  
3. Which product categories have sold the most items?  
4. Which sales channel generates the most revenue (Online vs. In-Store)?  
5. How does average transaction amount vary by customer age group?  
6. What is the distribution of returning vs new customers?  
7. Which payment method is most frequently used?  
8. What is the most common product category among each gender?  
9. Which sales channel is most popular in each U.S. state?  
10. What is the average transaction sale per year?

---

## 📁 Files Included
- **`Customer_Transactions.csv`** – Original dataset  
- **`Customer_Transactions.sql`** – SQL script used to create and clean the table  
- **`Customer_Analysis_Queries.sql`** – SQL queries for all analysis questions  
- **`Customer_Analysis_Solutions.sql`** – SQL queries with results of each analysis  
- **`Customer_Transactions.pbix`** – Power BI dashboard visualizing all findings  

---

## 📈 Key Insights

- **Alabama generated the highest total revenue, exceeding \$700K**, leading all states in overall sales performance.  
- **Toys had the highest average transaction amount (~\$770K) and the highest number of units sold**, while **Beauty** had the lowest average transaction amount (~\$730K).  
- **Online shopping generated slightly more revenue than in-store purchases**, although the difference was not dramatic.  
- **Customers aged 18–25 had the highest average spending**, outperforming all other age groups.  
- **There are more new customers than returning customers**, indicating strong acquisition but potential gaps in retention.  
- **PayPal was the most frequently used payment method**, while credit card usage was the lowest among all categories.  
- **Male customers showed a strong preference for purchasing Toys**, while **female customers were more likely to buy Beauty products**.  
- **Across all states in the dataset, 13 states favored Online shopping vs 10 for In-Store**, showing a clear preference for digital purchasing.  
- **The average sale amount increased in 2024 compared to 2023**, suggesting growth momentum in customer spending.

---
