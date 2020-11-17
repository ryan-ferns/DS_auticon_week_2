SELECT * FROM employees;

SELECT city FROM employees
    WHERE reportsto IS NULL;
    
SELECT * FROM customers;

SELECT firstname, lastname FROM customers
    WHERE city IN (SELECT city FROM employees
                       WHERE reportsto IS NULL)   
   
    
    
