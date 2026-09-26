-- Business Question
-- From the KimTay (Pet Store) Database, list all information about customers of KimTay who have a balance above $100 and have a credit balance of above 250. 
-- For information about the customers, list their first name, last name, customer ID, balance, quantity on order, and postal code. 
-- Additionally, select only the invoice number for all customers with a matching ID. Sort the results by last name, ascending order (A-Z).


SELECT DISTINCT C.FIRST_NAME AS MIDPROFILE_FNAME, C.LAST_NAME AS MIDPROFILE_LNAME, C.CUST_ID, C.BALANCE, C.POSTAL, I.INVOICE_NUM, C.CREDIT_LIMIT, IL.QUANTITY
FROM CUSTOMER C
JOIN INVOICES I ON C.CUST_ID = I.CUST_ID
JOIN INVOICE_LINE IL ON I.INVOICE_NUM = IL.INVOICE_NUM
WHERE C.BALANCE < 100
AND C.CREDIT_LIMIT > 250
ORDER BY C.LAST_NAME ASC;
