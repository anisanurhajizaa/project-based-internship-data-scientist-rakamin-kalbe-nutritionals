SELECT marital_status , AVG(age) AS average_age 
FROM customer 
GROUP by marital_status;


SELECT "gender" , AVG(age) AS average_age 
FROM customer 
GROUP BY "gender";

SELECT store.storename, SUM(transaction.qty) AS total_quantity
FROM transaction 
JOIN store ON transaction.storeid = store.storeid
GROUP BY store.storename
ORDER BY total_quantity DESC
LIMIT 1;

SELECT product."Product Name"  , SUM(transaction.totalamount) AS total_amount 
FROM transaction
JOIN product ON transaction.productid =  product.productid
GROUP BY product."Product Name"
ORDER BY total_amount DESC
LIMIT 1;





