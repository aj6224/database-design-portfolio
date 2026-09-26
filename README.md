# database-design-portfolio
Relational database schemas, ERDs, 3NF normalization, and SQL scripts.

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
