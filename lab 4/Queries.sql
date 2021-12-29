SELECT customer_name FROM customer WHERE customer_name LIKE 'Ma%';

SELECT order_id, quantity, SUM(quantity * item.unit_price) as total_price 
   FROM order_item, item 
   WHERE order_item.item_id = item.item_id 
   GROUP BY order_item.order_id;

SELECT S.order_id
   FROM shipment S
   WHERE S.warehouse_id IN (
       SELECT W.warehouse_id 
       FROM warehouse W 
       WHERE W.warehouse_city='Arica'
   );

SELECT SUM(order_item.quantity * item.unit_price) as total_price
   FROM order_item, item, shipment, warehouse 
   WHERE order_item.order_id = shipment.order_id 
   AND warehouse.warehouse_id = shipment.warehouse_id 
   AND order_item.item_id = item.item_id 
   AND warehouse.warehouse_id = 8;

SELECT warehouse.warehouse_id, warehouse.warehouse_city, COUNT(order_item.order_id) as order_count
   FROM warehouse, shipment, order_item
   WHERE warehouse.warehouse_id = shipment.warehouse_id
   AND shipment.order_id = order_item.order_id
   GROUP BY warehouse.warehouse_id
   UNION
   SELECT warehouse_id, warehouse_city, SUM(0)
   FROM warehouse
   WHERE warehouse_id NOT IN(
       SELECT S.warehouse_id
       FROM shipment S, order_item O
       WHERE S.order_id = O.order_id
   );


SELECT customer.customer_name, COUNT(store.order.order_id) as order_count
   FROM customer, store.order
   WHERE customer.customer_id = store.order.customer_id
   GROUP BY customer.customer_id
   UNION
   SELECT customer.customer_name, SUM(0)
   FROM customer
   WHERE customer_id NOT IN(
	SELECT C.customer_id
	FROM customer C, store.order O
	WHERE C.customer_id = O.customer_id
   );

SELECT *
   FROM item
   WHERE item.item_id NOT IN (
       SELECT I.item_id
       FROM item I, order_item
       WHERE item.item_id = order_item.item_id
   );
