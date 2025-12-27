select
    -- primary key
    sk_id_curr as customer_id,

    -- dimensions
    name_contract_type as contract_type,
    amt_credit as credit_amount,
    amt_annuity as annuity_amount,
    amt_goods_price as goods_price,
    name_education_type as education_level,
    name_family_status as family_status,
    name_housing_type as housing_type,
    cnt_fam_members as family_member_count,
    target as defaulted,
     days_birth / -365.0 as age_years,
    case
        when days_employed < 0 then null
        else days_employed / 365.0
    end as employment_years,

    -- measures
    amt_income_total as annual_income,
    name_income_type as income_type,
    occupation_type as occupation_type,
   
    -- external credit scores
    ext_source_1 as ext_score_1,
    ext_source_2 as ext_score_2,
    ext_source_3 as ext_score_3,

    -- boolean
    flag_own_car = 'Y' as owns_car,
    flag_own_realty = 'Y' as owns_real_estate,    

from {{ source('home_credit', 'application') }}
