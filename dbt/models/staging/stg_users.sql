WITH source AS (
  SELECT * FROM {{ source('raw', 'raw_users') }}
)

SELECT
  user_id,
  email,
  signup_date,
  country_code
FROM source