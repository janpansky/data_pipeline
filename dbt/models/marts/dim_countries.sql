SELECT country_code,
       country_name,
       region
FROM {{ ref('stg_countries') }}