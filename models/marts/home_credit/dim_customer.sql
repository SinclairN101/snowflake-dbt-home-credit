select
    -- primary key
    customer_id,

    -- demographics
    age,
    employment_years,
    education_level,
    family_status,
    housing_type,
    family_member_count,

    -- financial profile
    annual_income,
    income_type,
    occupation_type,

    -- ownership
    owns_car,
    owns_real_estate,

    -- external credit scores
    ext_score_1,
    ext_score_2,
    ext_score_3

from {{ ref('stg_application') }}
