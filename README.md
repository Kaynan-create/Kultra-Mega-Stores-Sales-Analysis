# 📊 Kultra-Mega-Stores-Sales-Analysis
## Introduction
This project presents an end-to-end SQL-based analysis of Kultra Mega Stores (KMS) order data from 2009 to 2012. As a Business Intelligence Analyst supporting KMS’s Abuja division, my objective was to extract, clean, and analyze the dataset to uncover trends, performance gaps, and business opportunities. The analysis provides actionable insights to inform management decisions on sales strategy, customer engagement, and operational efficiency. Using SQL Server, I performed data cleaning, transformation, aggregation, and reporting tasks.
## 📝 Company Overview
Kultra Mega Stores (KMS), headquartered in Lagos, Nigeria, specializes in the sale of office supplies and furniture. The company’s customer base includes:
- Individual consumers
- Small businesses (retail)
- Large corporate clients (wholesale)

KMS operates primarily in Lagos, with business operations extending to regions such as Abuja. The company is committed to delivering high-quality products and services to support both small and large office environments.
## 🚀 Project Objective
The goal of this project was to:
 - Analyze historical order data to identify sales trends and patterns.
 - Evaluate customer segments and product performance.
 - Review shipping costs in relation to delivery methods and order priorities.
 - Provide recommendations to optimize revenue, cost efficiency, and customer satisfaction.
## 📂 Dataset Used
**Source:** The Business Manager of KMS provided me with an Excel file containing KMS order records from 2009 to 2012.
**Main tables used:**
- KMS_Orders: Sales transactions, shipping, customer, and product data.
- Order_Status: Order return information.
## 🛠 Tools
- SQL Server (T-SQL)
- SQL Server Management Studio (SSMS)
## 📌 Analysis Approach
The following steps were followed in the analysis:
- **Database setup**: Created `KMS_Inventory` database and structured `KMS_Orders` table with appropriate primary key and data types.
- **Data cleaning**: Updated numeric columns (e.g., Sales, Profit, Discount) to correct decimal formats for consistency and accuracy.
- **Exploratory queries**: Developed SQL queries to answer key business questions and solve case scenarios such as:
  - Top-performing products, regions, and customers
  - Low-performing customer segments and regions
  - Shipping cost and mode analysis
  - Customer order behaviors across segments
  - Bottom 10 customers and how to increase their revenue
  - Sales performance by category and region
  - Customer-level revenue and order frequency
  - Shipping method efficiency
  - Return patterns across customer segments
  - Relationship between shipping cost and order priority
## 🎯 Key Insights
- The highest product category by sales was **Technology** with total sales of approximately 5.98 million. This provides a focus for future promotions.
- The top 3 regions in terms of sales were **West, Ontario and Prarie**. Their total sales were between 2.83-3.59 million approximately, they contributed the majority of sales.
- The bottom 3 regions in terms of sales were **Nunavut, Northwest Territories and Yukon**. Their total sales were between 975,000-1.16 million approximately, they present growth opportunities for the company.
- The bottom 10 customers generated minimal revenue, typically placing small and infrequent orders.
- The top 10 customers were responsible for a significant portion of total sales; most bought across all product categories, with only two focusing on fewer categories.
- The top small business customer with the highest sales was Dennis Kane with a total sales of approximately 76,000. It was identified for potential account-based marketing.
- Analysis shows that KMS is not aligning ship modes effectively with order priority.
 - High cost slow shipping mode (delivery truck) which is expected to be the slowest and most economical is being over used, even for urgent orders while faster ship modes (Express & Regular air) are not being prioritised for high order priority as expected.
- A total of 419 orders were returned, with returns spread across all customer segments.
## 📈 How This Ananlysis Supports Decision Making
The findings from this project can guide KMS in:
- **Revenue optimization:**
 - Focus upselling efforts on low-revenue customers with targeted promotions, surveys, and personalized offers.
 - Expand market penetration strategies in bottom-performing regions.
- **Operational cost control:**
 - Review shipping policies to align shipping modes with order priority — avoid high-cost delivery trucks for low-priority or low-value orders.
 - Reassess shipping contracts or processes to ensure delivery truck remains economical, or transition to cost-effective alternatives.
- **Customer targeting:**
 - Prioritize high-value customers with loyalty programs and tailored product recommendations.
 - Strengthen engagement with small businesses and corporate clients who drive significant orders.
- **Returns management:**
 - Investigate reasons for returns across segments to reduce return rates and associated costs.
## ✅ Conclusion
This analysis provided key insights into KMS’s sales, customer segments, and shipping operations. It highlights opportunities to grow revenue, cut shipping costs, and improve customer targeting. Acting on these findings can help KMS boost profitability and streamline operations.
