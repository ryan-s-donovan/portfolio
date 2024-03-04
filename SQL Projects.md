<a name="top"></a>

[<img src="https://user-images.githubusercontent.com/91146906/152112781-2de05074-70b1-436b-9bfb-860890cc1de1.svg" height="35"/>](../#OLAP)
<hr>

# Back to Roots Bakery OLAP
[<img src="https://user-images.githubusercontent.com/91146906/152239160-8f8c18a2-e724-4be7-863d-bc94151212ce.svg" height="35"/>](#ExecutiveSummary)
[<img src="https://user-images.githubusercontent.com/91146906/152279618-21ae078d-3d0b-45ed-95f1-306e5030f301.svg" height="35"/>](#BusinessRequirements)
[<img src="https://user-images.githubusercontent.com/91146906/152279677-02eb9847-1863-4641-b59c-58a0e6cd2f24.svg" height="35"/>](#DataMartDesign)
[<img src="https://user-images.githubusercontent.com/91146906/152239510-6c631219-71bc-4281-9c8b-b9b1e805b3d8.svg" height="35"/>](#BuildScript)
[<img src="https://user-images.githubusercontent.com/91146906/152280042-228b216c-e76c-4f34-80f6-f456a15358b2.svg" height="35"/>](#ETL)
[<img src="https://user-images.githubusercontent.com/91146906/161397633-2e4d30dc-ba35-4fe9-b66d-9c8e91ba0f86.svg" height="35"/>](#PowerPivot)
[<img src="https://user-images.githubusercontent.com/91146906/161397549-071ca628-25fa-4c34-91d1-78274cafc9b8.svg" height="35"/>](#PowerBI)

<a name="ExecutiveSummary"></a>
<hr>

## Executive Summary
Back to Roots Bakery is a health-conscious, community-centered bakery focused on helping people feel their best while still enjoying “going for ice cream.” The bakery makes and sells a variety of treats and comfort foods for in-store ordering, pre-ordered pick-up, and delivery. Orders can be placed using a variety of methods, including in-store, by phone, and online. In 2018, Back to Roots Bakery opened their first location in Boulder, Colorado and recently opened a new location in Longmont, Colorado. With this expansion, the bakery has seen an increase in demand.
<br>
<br>The Back to Roots OLTP gives Back to Roots Bakery the competitive advantage, customer insights, process optimization, and data-driven decision-making capabilities to compete in an increasingly competitive industry and to maximize their potential. However, Back to Roots has grown beyond their needs for a traditional OLTP, and due to the volume of data coming into the Back to Roots OLTP, the need to create a data mart is realized for the following reasons: (1) optimize reporting, (2) archive data, and (3) consolidate data. With particular emphasis on optimizing reporting, a data mart will allow faster reporting design and results at Back to Roots Bakery, empowering a focus on analysis and data-driven decision making to continue competing in the industry and maximizing potential, building upon the goals and benefits of the OLTP.
<br>
<br>[<img src="https://user-images.githubusercontent.com/91146906/152072378-b0168a2d-e85c-47c6-a272-fcfb3f6a44ae.svg" height="35"/>](#top)

<a name="BusinessRequirements"></a>
<hr>

## Business Requirements
<b>Chief Operating Officer (COO):</b> <i>What is the quantity of sales monthly, seasonally, and yearly summarized by product, product type, and diet, in addition to location and order fulfillment?</i>
<blockquote>This analysis will allow the COO to understand demand for products and order fulfillment at each location, informing decisions regarding what products should be stocked and which order fulfillment methods should be supported for those products.</blockquote>

<b>Hiring Manager:</b> <i>What are the sales monthly, quarterly, and yearly summarized by location, position name, and employee, with an indicator for number of days worked by the employee?</i>
<blockquote>This analysis will inform the hiring manager of the sales brought in by each employee, including location, position, and days worked information. This provides information regarding employee performance in terms of sales, informing decisions on allocation of support resources (including training), promotion, wage, and firing.</blockquote>

<b>Chief Marketing Officer (CMO):</b> <i>What are the sales monthly, quarterly, and yearly summarized by customer age and reward status, in addition to order placement method?</i>
<blockquote>This analysis will allow the CMO to understand the demographics, loyalty, and order placement habits of customers in terms of sales. This information will inform marketing and promotion decisions to reach customers and establish loyalty, in addition to the development and support of the appropriate order placement platforms.</blockquote>

<br>[<img src="https://user-images.githubusercontent.com/91146906/152072378-b0168a2d-e85c-47c6-a272-fcfb3f6a44ae.svg" height="35"/>](#top)

<a name="DataMartDesign"></a>
<hr>

## Data Mart Design
### Information Package

<table>
  <tr>
    <td colspan="6">&nbsp;<i>Dimensions</i></td>
  </tr>
  <tr>
    <td rowspan="0">&nbsp;<i>Hierarchies</i</td>
  </tr>
  <tr>
    <th>Date</th>
    <th>Product</th>
    <th>Customer</th>
    <th>Employee</th>
    <th>Order</th>
  </tr>
  <tr>
    <td>Date</td>
    <td>Product Type</td>
    <td>DOB (Age)</td>
    <td>First Name</td>
    <td>Placement</td>
  </tr>
  <tr>
    <td>Full Date</td>
    <td>Product Name</td>
    <td>City</td>
    <td>Last Name</td>
    <td>Fulfillment</td>
  </tr>
  <tr>
    <td>Day of Month</td>
    <td>Diet</td>
    <td>State</td>
    <td>Position Type</td>
    <td>Location Street Address</td>
  </tr>
  <tr>
    <td>Day Name</td>
    <td>Product Price (bin)</td>
    <td>Zip Code</td>
    <td>Position Name</td>
    <td>Location City</td>
  </tr>
  <tr>
    <td>Day of Week</td>
    <td></td>
    <td>Reward Status</td>
    <td>Wage Type</td>
    <td>Location State</td>
  </tr>
  <tr>
    <td>Day Week in Month</td>
    <td></td>
    <td>Reward Status Join Date</td>
    <td>Wage (bin)</td>
    <td>Location Zip Code</td>
  </tr>
  <tr>
    <td>Day of Week in Year</td>
    <td></td>
    <td>Reward Status End Date</td>
    <td>Hire Date</td>
    <td>Associated Reward Status</td>
  </tr>
  <tr>
    <td>Day of Quarter</td>
    <td></td>
    <td></td>
    <td>End Date</td>
    <td></td>
  </tr>
  <tr>
    <td>Day of Year</td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td>Week of Month</td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td>Week of Quarter</td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td>Week of Year</td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td>Month</td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td>Month Name</td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td>Month of Quarter</td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td>Quarter</td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td>Quarter Name</td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td>Year</td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td>Year Name</td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td>Month Year</td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td>MMYYYY</td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td>First Day of Month</td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td>Last Day of Month</td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td>First Day of Quarter</td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td>Last Day of Quarter</td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td>First Day of Year</td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td>Last Day of Year</td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td>Is Holiday</td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td>Is Weekday</td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td>Holiday</td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td>Season</td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td colspan="5">&nbsp;<b>Fact:</b> Product Price, Quantity, Sales*, Employee Days Worked**</td>
  </tr>
</table>

*Price x Quantity
<br>**Distinct count of order date by employee

### Star Schema

<img width="700" alt="BackToRootsDMStarSchema" src="https://user-images.githubusercontent.com/91146906/152288067-6de2031c-267d-4d4c-8cdf-eb1cfff8ddaf.png">

[<img src="https://user-images.githubusercontent.com/91146906/152072378-b0168a2d-e85c-47c6-a272-fcfb3f6a44ae.svg" height="35"/>](#top)

<a name="BuildScript"></a>
<hr>
	
## Build Script
The Back to Roots data mart build script creates the "BackToRootsDM" data mart if it does not exist, deletes tables if they exist, and creates dimension tables and the fact table with the appropriate attributes and constraints. Due to the logic, the script can be run multiple times without error.
<br>
<br>[<img src="https://user-images.githubusercontent.com/91146906/152286999-322b92ed-de1a-46f6-a8ff-9bc08b12f9ca.svg" height="35"/>](../BackToRootsOLAP/BuildBackToRootsDM.sql)
<br>
<br>[<img src="https://user-images.githubusercontent.com/91146906/152072378-b0168a2d-e85c-47c6-a272-fcfb3f6a44ae.svg" height="35"/>](#top)
	
<a name="ETL"></a>
<hr>
	
## Extract, Transform, and Load the Data Mart
Using Visual Studio and SSIS, data is extracted from the Back to Roots OLTP, transformed, and loaded into the data mart.

<img width="494" alt="ETL" src="https://user-images.githubusercontent.com/91146906/152477629-7ca615fb-5f35-420d-90c4-245779f5531c.png">

### DimDate
DimDate is loaded using the LoadDimDate.sql SQL query, which was provided.
<br>
<br>[<img src="https://user-images.githubusercontent.com/91146906/152286999-322b92ed-de1a-46f6-a8ff-9bc08b12f9ca.svg" height="35"/>](../BackToRootsOLAP/LoadDimDate.sql)

### DimProduct
DimProduct is loaded using the following SQL query.
```SQL
-- BackToRootsDM DimProduct Source Query Written by Hannah McDonald
-- Originally Written: October 2021 | Updated November 2021
---------------------------------------------------------------
-- Script query to select products for DimProduct
SELECT
	BackToRoots.dbo.Product.ProductID,
	BackToRoots.dbo.ProductType.ProductTypeName AS ProductType,				-- Type 0: Fixed
	BackToRoots.dbo.Product.ProductName AS ProductName,					-- Type 0: Fixed
	-- Subquery to get multiple diets on one line to show in single record
	STUFF((SELECT ', ' + BackToRoots.dbo.Diet.DietID
		   FROM BackToRoots.dbo.DietProduct
		   LEFT OUTER JOIN BackToRoots.dbo.Diet
				ON BackToRoots.dbo.Diet.DietID = BackToRoots.dbo.DietProduct.DietID
			WHERE BackToRoots.dbo.DietProduct.ProductID = BackToRoots.dbo.Product.ProductID
			FOR XML PATH('')),1,1,'') AS Diet,					-- Type 0: Fixed
	BackToRoots.dbo.Product.ProductPrice AS ProductPrice					-- Type 2: Historical
FROM BackToRoots.dbo.Product
LEFT OUTER JOIN BackToRoots.dbo.ProductType
	ON BackToRoots.dbo.ProductType.ProductTypeID = BackToRoots.dbo.Product.ProductTypeID;
```

### DimEmployee
DimEmployee is loaded using the following SQL query.
```SQL
-- BackToRootsDM DimEmployee Source Query Written by Hannah McDonald
-- Originally Written: October 2021 | Updated November 2021
---------------------------------------------------------------
-- Script query to select employees for DimEmployee
SELECT
	BackToRoots.dbo.Employee.EmployeeID,
	BackToRoots.dbo.Employee.EmployeeFirstName AS FirstName,			-- Type 0: Fixed
	BackToRoots.dbo.Employee.EmployeeLastName AS LastName,				-- Type 1: Changing
	BackToRoots.dbo.Position.PositionType,						-- Type 2: Historical
	BackToRoots.dbo.Position.PositionName,						-- Type 2: Historical
	BackToRoots.dbo.EmploymentHistory.WageType,					-- Type 2: Historical
	ISNULL(BackToRoots.dbo.EmploymentHistory.Wage, -1) AS Wage,			-- Type 2: Historical	-- Replace null with illogical wage
	BackToRoots.dbo.EmploymentHistory.HireDate,					-- Type 0: Fixed
	ISNULL(BackToRoots.dbo.EmploymentHistory.EndDate, '9999-01-01') AS EndDate	-- Type 1: Changing	-- Replace null with illogical date
FROM BackToRoots.dbo.Employee
LEFT OUTER JOIN BackToRoots.dbo.EmploymentHistory
	ON BackToRoots.dbo.EmploymentHistory.EmployeeID = BackToRoots.dbo.Employee.EmployeeID
LEFT OUTER JOIN BackToRoots.dbo.Position
	ON BackToRoots.dbo.Position.PositionID = BackToRoots.dbo.EmploymentHistory.PositionID;
```

### DimCustomer
DimCustomer is loaded using the following SQL query.
```SQL
-- BackToRootsDM DimCustomer Source Query Written by Hannah McDonald
-- Originally Written: October 2021 | Updated November 2021
---------------------------------------------------------------
-- Script query to select customers for DimCustomer
SELECT
	BackToRoots.dbo.Customer.CustomerID,
	ISNULL(BackToRoots.dbo.Customer.CustomerDOB, '9999-01-01') AS DOB,				-- Type 0: Fixed	-- Replace null with illogical date
	ISNULL(BackToRoots.dbo.Customer.CustomerCity, 'N/A') AS City,					-- Type 1: Changing
	ISNULL(BackToRoots.dbo.Customer.CustomerState, 'NA') AS State,					-- Type 1: Changing
	ISNULL(BackToRoots.dbo.Customer.CustomerZipCode, 00000) AS ZipCode,				-- Type 1: Changing	-- Replace null with illogical zip code
	BackToRoots.dbo.RewardStatus.RewardStatusName AS RewardStatus,					-- Type 2: Historical
	BackToRoots.dbo.RewardHistory.RewardStatusJoinDate,						-- Type 0: Fixed
	ISNULL(BackToRoots.dbo.RewardHistory.RewardStatusEndDate, '9999-01-01') AS RewardStatusEndDate	-- Type 1: Changing	-- Replace null with illogical date
FROM BackToRoots.dbo.Customer
LEFT OUTER JOIN BackToRoots.dbo.RewardHistory
	ON BackToRoots.dbo.RewardHistory.CustomerID = BackToRoots.dbo.Customer.CustomerID
LEFT OUTER JOIN BackToRoots.dbo.RewardStatus
	ON BackToRoots.dbo.RewardStatus.RewardStatusID = BackToRoots.dbo.RewardHistory.RewardStatusID;
```

### DimOrder
DimOrder is loaded using the following SQL query.
```SQL
-- BackToRootsDM DimOrder Source Query Written by Hannah McDonald
-- Originally Written: October 2021 | Updated November 2021
---------------------------------------------------------------
-- Script query to select orders for DimOrder
SELECT
	BackToRoots.dbo.CustomerOrder.OrderID,						-- Type 0: Fixed
	BackToRoots.dbo.CustomerOrder.OrderPlacement AS Placement,			-- Type 0: Fixed
	BackToRoots.dbo.CustomerOrder.OrderFulfillment AS Fulfillment,			-- Type 0: Fixed
	BackToRoots.dbo.StoreLocation.LocationStreetAddress,				-- Type 0: Fixed
	BackToRoots.dbo.StoreLocation.LocationCity,					-- Type 0: Fixed
	BackToRoots.dbo.StoreLocation.LocationState,					-- Type 0: Fixed
	BackToRoots.dbo.StoreLocation.LocationZipCode,					-- Type 0: Fixed
	BackToRoots.dbo.RewardStatus.RewardStatusName AS AssociatedRewardStatus		-- Type 0: Fixed
FROM BackToRoots.dbo.CustomerOrder
LEFT OUTER JOIN BackToRoots.dbo.StoreLocation
	ON BackToRoots.dbo.StoreLocation.LocationID = BackToRoots.dbo.CustomerOrder.LocationID
LEFT OUTER JOIN BackToRoots.dbo.Customer
	ON BackToRoots.dbo.Customer.CustomerID = BackToRoots.dbo.CustomerOrder.CustomerID
LEFT OUTER JOIN BackToRoots.dbo.RewardHistory
	ON BackToRoots.dbo.RewardHistory.CustomerID = BackToRoots.dbo.Customer.CustomerID
	AND BackToRoots.dbo.CustomerOrder.OrderDate BETWEEN BackToRoots.dbo.RewardHistory.RewardStatusJoinDate AND IIF(BackToRoots.dbo.RewardHistory.RewardStatusEndDate IS NULL, GetDate(), BackToRoots.dbo.RewardHistory.RewardStatusEndDate)
LEFT OUTER JOIN BackToRoots.dbo.RewardStatus
	ON BackToRoots.dbo.RewardStatus.RewardStatusID = BackToRoots.dbo.RewardHistory.RewardStatusID;
```

### FactSales
FactSales is loaded using the following SQL query, then uses a series of lookups in the ETL to populate the SKs.
```SQL
-- BackToRootsDM FactSales Source Query Written by Hannah McDonald
-- Originally Written: October 2021 | Updated October 2021
---------------------------------------------------------------
-- Script query to load the FactSales table
-- Use lookups in ETL to bring in SKs
SELECT 
	BackToRoots.dbo.CustomerOrder.OrderID,
	BackToRoots.dbo.Customer.CustomerID,
	BackToRoots.dbo.Employee.EmployeeID,
	BackToRoots.dbo.CustomerOrder.OrderDate,
	BackToRoots.dbo.Product.ProductID,
	BackToRoots.dbo.OrderLine.Quantity, 
	BackToRoots.dbo.Product.ProductPrice
FROM BackToRoots.dbo.Customer 
INNER JOIN BackToRoots.dbo.CustomerOrder 
	ON BackToRoots.dbo.Customer.CustomerID = BackToRoots.dbo.CustomerOrder.CustomerID 
INNER JOIN BackToRoots.dbo.Employee 
	ON BackToRoots.dbo.CustomerOrder.EmployeeID = BackToRoots.dbo.Employee.EmployeeID 
INNER JOIN BackToRoots.dbo.OrderLine 
	ON BackToRoots.dbo.CustomerOrder.OrderID = BackToRoots.dbo.OrderLine.OrderID 
INNER JOIN BackToRoots.dbo.Product 
	ON BackToRoots.dbo.OrderLine.ProductID = BackToRoots.dbo.Product.ProductID;
```
The lookups in the ETL, which popluate the SKs, are as follows.
	
![BackToRootsDMLoadFactSales](https://user-images.githubusercontent.com/91146906/138399979-b6b7c8ec-0cf8-4f0a-8ef0-80fc0d892424.png)

[<img src="https://user-images.githubusercontent.com/91146906/152072378-b0168a2d-e85c-47c6-a272-fcfb3f6a44ae.svg" height="35"/>](#top)
	
<a name="PowerPivot"></a>
<hr>
	
## Sales Analysis (Power Pivot)
### Chief Operating Officer's Question 
What is the quantity of sales monthly, seasonally, and yearly summarized by product, product type, and diet, in addition to location and order fulfillment?
	
### Dashboard
	
![BackToRootsDMPowerPivotSnapshot](https://user-images.githubusercontent.com/91146906/152288743-11ae6130-9ac9-4bc7-b06e-bed1f1f68ab7.png)
	
### Analysis
The "Sales Overtime by Product Type" indicate special orders have the most sales for Back to Roots by a significant margin. In January 2020, special orders had their peak sales of $617,620. Cookies have more sales around the holiday season and winter (December through February), with their peak sales of $249,363.50 in January 2020. The sales of other product types do not significantly differ from one another.
<br>
<br>The "Sales Overtime by Product Type" also demonstrate an upward trend in sales until the COVID-19 pandemic hit, at which point sales dropped significantly as the bakery had to close for several months. Upon reopening, sales began to increase again, although they have not reached pre-pandemic levels. The "Number of Orders by Order Fulfillment Method" also demonstrates the impact of the COVID-19 pandemic. Prior to the pandemic, in-store order fulfillment was used for 21,733 orders in Q1 2020, compared to 14,437 that used pick-up and 5,833 that used delivery. During Q2 2020, orders were only filled via delivery, as it was the heart of the COVID-19 pandemic. As the community began to adapt to life amid COVID-19, the number of orders using pick-up surpassed those using delivery; however, in-store order fulfilments remain low. There were 6,299 orders filled via pick-up in Q4 2020, while 5,539 were filled via delivery and 2,131 via in-store. With the "Number of Orders by Order Fulfillment Method" analysis, the data suggests in-store order fulfillment methods are declining, while pick-up and delivery methods are increasing.
<br>
<br>The "Quantity Sold by Product" analysis indicates Raspberry Thumbprint Cookies have the highest quantity sold over all time and are particularly popular in the winter, as are many cookies. Conversely, crisps have a low quantity sold and are not sold in the winter. The pumpkin products, naturally, have the most unit sales in the fall. The data in this analysis suggests some products are highly season, like Gingerbread Truffles, while others are not, like Special Order Cakes. Further, this analysis in relation to the sales analysis, suggests that both cookies and special orders have high sales and quantity sold; however, a much higher quantity of cookies are sold without matching the sales brought in by special orders due to the significant price difference. Balls also have a high quantity of sales, although that does not necessarily seem to show in the sales analysis.
<br>
<br>The "Sales by Diet Type" analysis indicates the "Unknown" diet has the highest sales, which may be explained by these products being special order and meeting whatever dietary requirements are requested. Gluten-free, honey-free, nut-free, processed sugar-free, and vegan products consistently have the highest sales of products with known diet types, while those without nuts are slightly lower and those also without honey are the lowest. However, it cannot be determined with this analysis whether the difference in sales is due to the product's diet types or other factors, like the products themselves and the number of products meeting each diet type available. 
	
### Recommendations 
<ul>
  <li>Back to Roots should promote and invest in special orders, as this is where Back to Roots has the most sales.</li>
  <li>Since "balls" have a high quantity of sales that does not reflect in the dollar value of sales, it may be worthwhile to further investigate this and determine how the popularity of the "ball" product types can translate to a higher dollar value of sales. Can prices be increased?</li>
  <li>Back to Roots should track demand for order fulfillment methods as the community continues to recover from the pandemic. If the current trend continues, Back to Roots should focus more on developing delivery and pick-up processes, rather than in-store fulfillment.</li>
  <li>Seasonal products are popular, and Back to Roots should take advantage of that by following seasonal trends and using seasonal ingredients.</li>
  <li>Back to Roots may consider evaluating consumers' diet preferences and adapt their products to meet those, as this may lead to a better understanding of how diet impacts sales.</li>
</ul>

[<img src="https://user-images.githubusercontent.com/91146906/152072378-b0168a2d-e85c-47c6-a272-fcfb3f6a44ae.svg" height="35"/>](#top)
	
<a name="PowerBI"></a>
<hr>
	
## Customer and Order Dashboard (Power BI)
### Chief Marketing Officer's Question
What are the sales monthly, quarterly, and yearly summarized by customer age and reward status, in addition to order placement method?

### Dashboard
<img width="1211" alt="BackToRootsDashboard" src="https://user-images.githubusercontent.com/91146906/152289272-89e5505c-4e6a-4f29-b516-66ec308c28af.png">

### Analysis
Sales experienced a steady increase, despite seasonality, from Back-to-Root's opening in February 2018 through September 2019, then a sharp increase was seen in October 2019. Sales hit their peak of $1,273,807.50 in January 2020 before a drastic drop to $147,357 in April 2020 due to the COVID-19 pandemic and the associated impacts. Back-to-Roots closed for a period and then was only able to offer delivery and pick-up options. Since then, sales have once again been steadily increasing and are projected to continue doing so, although seasonality will result in some increases and decreases in sales.
<br>
<br>Of the Back-to-Roots customers who have disclosed birthdays, most (574) customers fall in the 30-39 age group and make-up $1.32 million of the $17.51 million sales. The data suggests these customers prefer an online order placement method, with 43.9% of orders by customers aged 30-39 placed online (compared to 33.9% for all customers). Similarly, the 490 customers aged 40-49, 446 customers aged 20-29, and 362 customers aged 50-59 place more orders online than in-store or via phone. While all age groups place a percentage of orders in-store, this order placement method is used most often by customers with undisclosed birthdays. This could be because it is easy to input your birthday when placing an online order, and it is less common to disclose birthday information when in-store.
<br>
<br>Of the orders associated with a rewards status (i.e. not placed by customers with no rewards), 45.3% are placed online (compared to 33.9% for all orders) and 39.1% are placed in-store (compared to 51.4% for all orders). Thus, the data suggests that more loyal customers prefer the online order placement method. Further, orders not associated to a reward status have an average order total of $85, while orders associated to the bronze status average $95, associated to silver status average $96, associated to gold status average $93, and associated to platinum status average $94. Thus, the data suggests having a reward status leads to more spending per order, but the level of reward status does not necessarily make a difference.
<br>
<br>The majority of sales are from customers with Boulder and Longmont addresses, likely because there are Back-to-Roots locations in each of these places. There are also some sales from customers in Niwot and Lafayette; however, sales are isolated to customers in these four cities.

### Recommendations
<ul>
  <li>Continue developing, improving, and promoting the online order placement system, as many loyal customers prefer this order placement method.</li>
  <li>Promote rewards program, as it may lead to more spending per order. Further, consider adjusting incentives between rewards tiers to increase spending.</li>
  <li>Market to potential customers in cities surrounding Boulder, Longmont, Niwot, and Lafayette to increase customer base (delivery may be appealing).</li>
</ul>

[<img src="https://user-images.githubusercontent.com/91146906/152072378-b0168a2d-e85c-47c6-a272-fcfb3f6a44ae.svg" height="35"/>](#top)

