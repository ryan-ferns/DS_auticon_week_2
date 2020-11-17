SELECT * FROM employees;
SELECT * FROM customers; 
    
SELECT * FROM customers
    WHERE country = "Brazil";
    
SELECT * FROM employees
    JOIN customers
    ON employees.employeeid = customers.supportrepid
    WHERE customers.country = "Brazil"
    GROUP BY employees.lastname;
    
SELECT employees.lastname, employees.firstname FROM employees
    JOIN employees a
    ON employees.employeeid = a.reportsto
    WHERE employees.title LIKE "%Manager%" AND a.reportsto IN (SELECT reportsto FROM employees
                                                                  JOIN customers
                                                                  ON employees.employeeid = customers.supportrepid
                                                                  WHERE customers.country = "Brazil"
                                                                  GROUP BY employees.lastname)
    GROUP BY employees.lastname;
