
-- Customer Repeat Purchase Analysis

WITH customer_orders AS (
    SELECT
        c.customer_unique_id,
        COUNT(DISTINCT o.order_id) AS total_orders
    FROM public.customers c
    JOIN public.orders o
        ON c.customer_id = o.customer_id
    WHERE o.order_status = 'delivered'
    GROUP BY c.customer_unique_id
)
SELECT
    COUNT(*) AS total_customers,
    COUNT(*) FILTER (WHERE total_orders = 1)
        AS one_time_customers,
    COUNT(*) FILTER (WHERE total_orders > 1)
        AS repeat_customers,
    ROUND(
        COUNT(*) FILTER (WHERE total_orders > 1)
        * 100.0 / NULLIF(COUNT(*), 0),
        2
    ) AS repeat_purchase_rate_pct
FROM customer_orders;
