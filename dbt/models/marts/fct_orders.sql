SELECT
  order_id,
  user_id,
  order_date,
  amount_usd
FROM {{ ref('stg_orders') }}