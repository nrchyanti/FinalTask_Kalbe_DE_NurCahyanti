--Challenge 4

CREATE DATABASE "KALBE"
    WITH
    OWNER = postgres
    ENCODING = 'UTF8'
    CONNECTION LIMIT = -1
    IS_TEMPLATE = False;

INSERT INTO public."Inventory"(
	"Item_code", "Item_name", "Item_price", "Item_total")
	VALUES 
		(2341, 'Promag Tablet', 3000, 100),
		(2342, 'Hydro Coco 250ML', 7000, 20),
		(2343, 'Nutrive Benecol 100ML', 20000, 30),
		(2344, 'Blackmores Vit C 500mg', 95000, 45),
		(2345, 'Entrasol Gold 370G', 90000, 120);
		
SELECT "Item_name", "Item_total"
FROM "Inventory"
ORDER BY "Item_total" DESC
LIMIT 1

DELETE FROM "Inventory"
WHERE "Item_total"=(SELECT MIN("Item_total") FROM "Inventory")

--Challenge 5

SELECT * 
FROM customer_orders 
WHERE (purchase_amount < 100 
	   OR order_date > '2022-08-25')
	   AND (customer_id > 2001)