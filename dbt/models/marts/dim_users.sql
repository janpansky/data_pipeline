WITH users AS (
  SELECT * FROM {{ ref('stg_users') }}
),
countries AS (
  SELECT * FROM {{ ref('stg_countries') }}
)

SELECT
  u.user_id,
  u.email,
  u.signup_date,
  c.country_name,
  c.region
FROM users u
LEFT JOIN countries c
  ON u.country_code = c.country_code