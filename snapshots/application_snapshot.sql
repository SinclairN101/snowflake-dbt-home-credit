{% snapshot application_snapshot %}

{{
    config(
      target_schema='snapshots',
      unique_key='customer_id',
      strategy='check',
      check_cols=[
        'annual_income',
        'employment_years',
        'housing_type',
        'income_type',
        'occupation_type',
        'ext_score_1',
        'ext_score_2',
        'ext_score_3'
      ]
    )
}}

select
    customer_id,
    annual_income,
    employment_years,
    housing_type,
    income_type,
    occupation_type,
    ext_score_1,
    ext_score_2,
    ext_score_3

from {{ ref('stg_application') }}

{% endsnapshot %}
