WITH source AS (
  SELECT * FROM {{ source('raw', 'raw_orders') }}
)

SELECT
  order_id,
  user_id,
  order_date,
  amount_usd
FROM source