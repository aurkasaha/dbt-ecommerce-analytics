# dbt E-Commerce Analytics Capstone

Analytics engineering project built with dbt Core + BigQuery
using the thelook_ecommerce public dataset.

## Architecture
- Staging: raw source cleaning (orders, users, order_items)
- Intermediate: joined and enriched models
- Marts: dim_users, fact_orders, RFM segmentation

## What's included
- Layered dbt architecture (staging → intermediate → marts)
- Incremental model design (fact_orders)
- RFM customer segmentation (rfm_users → rfm_scored → rfm_segment)
- dbt tests (not_null, unique, relationships)
- Documentation with lineage graph
- Custom macro

## Stack
dbt Core | BigQuery | SQL<img 
width="1298" height="592" alt="Screenshot 2026-04-11 013010" src="https://github.com/user-attachments/assets/77c9f643-ce88-4b96-b2c2-486596605b81" />

