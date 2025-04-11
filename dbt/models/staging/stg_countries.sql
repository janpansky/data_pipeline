WITH source AS (
  SELECT * FROM {{ source('raw', 'raw_countries') }}
)

SELECT
  country_code,
  country_name,
  region
FROM source