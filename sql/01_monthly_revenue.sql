
-- E-Commerce Sales Analysis
-- Monthly revenue from delivered orders

SELECT
    DATE_TRUNC('month', o.order_purchase_timestamp)::date AS month,
    COUNT(DISTINCT o.order_id) AS total_orders,
    ROUND(SUM(oi.price)::numeric, 2) AS product_revenue
FROM public.orders AS o
JOIN public.order_items AS oi
    ON o.order_id = oi.order_id
WHERE o.order_status = 'delivered'
GROUP BY 1
ORDER BY 1;

