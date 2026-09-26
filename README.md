# database-design-portfolio
Relational database schemas, ERDs, 3NF normalization, and SQL scripts.

DATEPART Explanation:
I will be exploring and introducing the DATEPART function in SQL.

-- FORMAT/SYNTAX
DATEPART (datepart, date)

-- BREAKS DOWN A DATE BY YEAR, MONTH OR DATE
-- ALLOWS A USER TO FILTER SPECIFIC DATA FROM A LARGE SET BY YEAR, MONTH, OR DAY
-- USING KIMTAY DB, THE INVOICE_DATE ONLY HAS ONE MONTH (NOVEMBER) WITH THE SAME YEAR AS WELL, BUT DIFFERENT DATES

SELECT *
FROM INVOICES;

<img width="424" height="261" alt="download1" src="https://github.com/user-attachments/assets/7b026712-adc6-4950-b3a4-bc7d493eaa36" />

-- Firstly, I will be using the DATEPART () within the select clause to specify a specific date that we want to look at all invoices issued on that date

WHERE DATEPART (day, INVOICE_DATE) = 18

<img width="420" height="117" alt="download2" src="https://github.com/user-attachments/assets/cdf9bc42-0833-4dd8-ac1d-b5a63ccb5ef0" />

Since the INVOICE_DATE is repeated 3 times, we now need to clean the query up a little bit.

SELECT INVOICE_NUM, CUST_ID

<img width="285" height="124" alt="download3" src="https://github.com/user-attachments/assets/c4531fd2-d6ab-46ef-979b-ec254aed0444" />

Now, the data is cleaned up and we can see that on 2021-11-18, we have 3 unique invoices billed out to 2 unique customers, with one of those customers having 2 invoices billed on the same day.


WALMART ERD AND BUSINESS EXPLANATION:

<img width="1678" height="897" alt="ERD" src="https://github.com/user-attachments/assets/48842530-5d7c-472e-a553-f78557196927" />

Walmart is a retail store that many Americans and people around the world shop at daily. Walmart is known for their low prices, making their goods accessible for all groups of people, and their razor thin margins on items. As a former employee of Walmart, there are loads of different types of data that Walmart stores to keep track of sales, inventory, and specific orders, and all of this data is used day in and day out by different levels of management to ensure that the Walmart business model is able to function properly.

For my design choice, I decided to hone in and connect orders by a customer to the specific item that is purchased. This is a good way for Walmart to track specific margins on items, and I further broke it down by department. This choice to break it down by department is something that Walmart uses a lot during inventory season, when they take inventory of the whole store. There is something called a 'shrink' percentage that is a numeric value to track the sales versus items that are either stolen, scrapped for whatever reason, or marked down and moved to the clearance section. I worked in the asset protection department, so we were constantly wanting to break data down by department to figure out how we can improve the shrink in a specific department, and I believe that by connecting data in the way I did, I would be able to better connect the specific shrink to the department and therefore find the issue in that specific department.

For my subertype subtype relationship, I decided to break ITEM down by 3 different types of item. This is not to be confused with department, because GM, Pharmacy, and Grocery are considered areas of the store rather than a specific department. Departments fall within a specific section of the store. I think that by breaking down ITEM into the 3 I chose, it separates each item into a specific area of the store and from there someone in Asset Protection could choose to break the higher shrink items into areas of the store and then go from there, as well as having departmental data.

I decided to add in a history data entity into my model as well. For this, I decided to focus more on the performance of a specific department by creating the DEPARTMENT_MANAGER_HISTORY entity. This is a way for Walmart to track the reason for change within a department, in order to focus in on what the reasoning is for high turnover rate, which is something Walmart struggles with.

Overall, I think that my business model is a good reflection from the Asset Protection standpoint of the store. If I would have chosen a more specific approach, such as the Grocery area of the store, I could have likely used the same model, but it would have been harder for me to gather more data because not everyone buys groceries from Walmart. For example, they may be a contractor that only buys items from the hardware section, and therefore would have no data from buying groceries, or very limited. I think that my business model is a great way for Walmart, or any large retail chain for that matter, to connect departmental data with each orders and track data based on that, rather than only tracking data by customer or order.
