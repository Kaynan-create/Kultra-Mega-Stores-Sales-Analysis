create database KMS_Inventory

----Checking The Data Structure----
select top 10 * from KMS_Orders
exec sp_help 'KMS_Orders'

----Primary Key Creation----
alter table KMS_Orders
add constraint PK_KMS_Orders primary key (Row_ID)

select * from KMS_Orders

----Table Cleaning----
alter table KMS_Orders
alter column Sales decimal (10,2)

alter table KMS_Orders
alter column Discount decimal (10,2)

alter table KMS_Orders
alter column Profit decimal (10,2)

alter table KMS_Orders
alter column Unit_price decimal (10,2)

alter table KMS_Orders
alter column Shipping_Cost decimal (10,2)

alter table KMS_Orders
alter column Product_Base_Margin decimal (10,2)

select * from KMS_Orders

----CASE SCENARIOS----

----1. Highest Product Category in terms of Sales----
select top 1 Product_Category, sum(Sales) as Total_Sales
from KMS_Orders
group by Product_Category
order by Total_Sales desc

----2a. Top 3 Regions in terms of Sales----
select top 3 region, sum(sales) as Total_Sales
from KMS_Orders
group by region
order by Total_Sales desc

----2b. Bottom 3 Regions in terms of Sales----
select top 3 region, sum(sales) as Total_Sales
from KMS_Orders
group by region
order by Total_Sales asc

----3. Total Sales of Appliances In Ontario----
select region, sum(sales) as Appliances_Sales_In_Ontario
from KMS_Orders
where Product_Sub_Category = 'Appliances'and Region = 'Ontario'
group by Region

----4. Advice On Increasing Revenue From Bottom 10 Customers----
select top 10 Customer_Name, sum(sales) as Total_Revenue, count(Order_ID) as Total_Order, avg(sales) as Avg_Order_Value
from KMS_Orders
group by Customer_Name
order by Total_Revenue asc

--Analysis shows that these 10 customers have the least revenue, mainly buying low-value products and placing infrequent orders.
--We recommend that KMS introduces upselling strategies focused on these customers to grow their revenue.
--The strategies could include, conducting a survey to identify their needsand provide satisfaction, giving out targeted promotions or bonuses, and providing free delivery for orders above a certain amount.

select * from KMS_Orders

----5. KMS Incurred The Most Shipping Cost Using Which Shipping Method?
select top 1 Ship_Mode, sum(Shipping_Cost) as Total_Shipping_Cost
from KMS_Orders
group by Ship_Mode
order by Total_Shipping_Cost desc

----6. Most Valueable Customers And The Products They Buy
select top 5 Customer_Name, sum(sales) as Total_Sales, Max(Product_Name) as Product_Name
from KMS_Orders
group by Customer_Name
order by Total_Sales desc

----7. Small Business Customer With The Highest Sales----
select top 1 Customer_Name, Customer_Segment, sum(sales) as Total_Sales
from KMS_Orders
where Customer_Segment = 'Small Business'
group by Customer_Name, Customer_Segment
order by Total_Sales desc

select * from KMS_Orders

----8. Corporate Customer With The Most Number Of Orders Between 2009 and 2012----
select top 1 Customer_Name, Customer_Segment, count(Order_ID) as Order_Count
from KMS_Orders
where Customer_Segment = 'Corporate'
and Order_Date between '2009-01-01' and '2012-12-31'
group by Customer_Name, Customer_Segment
order by Order_Count desc

----9. Consumer Customer With The Most Profit----
select top 1 Customer_Name, Customer_Segment, sum(Profit) as Total_Profit
from KMS_Orders
where Customer_Segment = 'Consumer'
group by Customer_Name, Customer_Segment
order by Total_Profit desc

----10. Which Customer Returned Items And What Segment Do They Belong To?----
select distinct Customer_Name, Customer_Segment
from KMS_Orders k
inner join Order_Status o
on k.Order_ID = o.Order_ID
where o.Status = 'Returned'

---419 orders were returned. These customers belong to different segments: consumer, corporate, home office and small business segments.

----11. Appropriateness Of Shipping Cost Vs Order Priority---
select Ship_Mode, Order_Priority, sum(shipping_cost) as Total_Shipping_Cost, count(Order_ID) as Order_Count, Avg(Shipping_Cost) as Avg_Shipping_Cost
from KMS_Orders
group by Ship_Mode, Order_Priority
order by Avg_Shipping_Cost desc

---Analysis shows that KMS is not aligning ship modes effectively with order priority.
---Delivery truck which is expected to be the slowest and most economical is incurring the highest average shipping cost (around 43-47), and is used across all the order priorities including the critical and high.
---Express air which is expected to be the fastest and most expensive has a lower average shipping cost (around 6-8), and is used across all order priorities including low and unspecified.
---This indicates that High cost slow shipping mode (delivery truck) is being over used, even for urgent orders while faster ship modes (Express air) are not being prioritised for high order priority as expected.
---We recommend KMS to review and correct the shipping cost allocation in the system to make sure that Delivery truck is actually the most economical, or it should not be used if the faster ship modes are actually cheaper.
