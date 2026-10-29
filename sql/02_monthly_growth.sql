
-- Monthly Revenue Growth Analysis
-- Using CTE and LAG Window Function

WITH monthly_sales AS (
    SELECT
        DATE_TRUNC('month', o.order_purchase_timestamp)::date AS month,
        ROUND(SUM(oi.price)::numeric, 2) AS revenue
    FROM public.orders o
    JOIN public.order_items oi
        ON o.order_id = oi.order_id
    WHERE o.order_status = 'delivered'
    GROUP BY 1
),
growth_analysis AS (
    SELECT
        month,
        revenue,
        LAG(revenue) OVER (ORDER BY month) AS previous_month_revenue
    FROM monthly_sales
)
SELECT
    month,
    revenue,
    previous_month_revenue,
    ROUND(
        (revenue - previous_month_revenue)
        / NULLIF(previous_month_revenue, 0) * 100,
        2
    ) AS mom_growth_pct
FROM growth_analysis
ORDER BY month;

