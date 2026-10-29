
-- Data Quality Checks
-- E-Commerce Analytics Project

SELECT
    COUNT(*) AS total_orders,

    COUNT(*) FILTER (
        WHERE order_id IS NULL
    ) AS missing_order_ids,

    COUNT(*) FILTER (
        WHERE customer_id IS NULL
    ) AS missing_customer_ids,

    COUNT(*) FILTER (
        WHERE order_purchase_timestamp IS NULL
    ) AS missing_purchase_dates,

    COUNT(*) - COUNT(DISTINCT order_id)
        AS duplicate_order_ids

FROM public.orders;
