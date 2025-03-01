create database dmartdata;
use dmartdata;
CREATE TABLE IF NOT EXISTS DmartOrderData (
    Order_id VARCHAR(50),
    Order_date DATE,
    Ship_mode VARCHAR(50),
    Customer_name VARCHAR(100),
    Segment VARCHAR(50),
    Country VARCHAR(50),
    City VARCHAR(50),
    State VARCHAR(50),
    Region VARCHAR(50),
    Category VARCHAR(50),
    Sub_category VARCHAR(50),
    Product_name VARCHAR(100),
    Sales DECIMAL(10, 2),
    Quantity INT,
    Discount DECIMAL(5, 2),
    Profit DECIMAL(10, 2),
    Feedback VARCHAR(10)
);

select * from DmartOrderData where Region = 'North' group by Category having Sub_category = 'Paper' order by Category limit 5;

SELECT Category, COUNT(*) as OrderCount
FROM DmartOrderData
WHERE Region = 'North' AND Sub_category = 'Paper'
GROUP BY Category
ORDER BY Category;

use dmartdata;
select * from dmartorderdata;
select * from losses;

SHOW PROCEDURE STATUS WHERE Db = 'dmartdata';
call losses;



