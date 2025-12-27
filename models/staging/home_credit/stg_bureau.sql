select
    -- Primary keys
    sk_id_bureau as bureau_id,
    sk_id_curr as customer_id,

    -- dimensions 
    credit_type,
    credit_active as credit_status,
    cnt_credit_prolong as credit_prolong_count,

    -- credit amounts
    amt_credit_sum as credit_amount,
    amt_credit_sum_debt as credit_amount_debt,
    amt_credit_sum_limit as credit_amount_limit,
    amt_credit_sum_overdue as credit_amount_overdue,

    -- credit duration (years)
    days_credit / -365.0 as credit_age_years,
    days_credit_enddate / 365.0 as credit_end_date_years,
    days_enddate_fact / 365.0 as credit_close_date_years

from {{ source('home_credit', 'bureau') }}
