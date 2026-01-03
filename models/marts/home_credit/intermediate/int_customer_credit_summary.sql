with applications as (

    select
        -- primary key
        customer_id,

        -- demographics
        round(age, 0) as age,
        round(employment_years, 1) as employment_years,
    case
       when education_level in ('Lower secondary') then 'Lower secondary'
       when education_level in ('Secondary / secondary special') then 'Upper secondary'
       when education_level in ('Incomplete higher') then 'Some higher education'
       when education_level in ('Higher education') then 'Higher education'
       when education_level in ('Academic degree') then 'Postgraduate / academic degree'
    else 'Unknown'
    end as education_level, 
    case
        when family_status in ('Single / not married') then 'Single'
        when family_status in ('Married', 'Civil marriage') then 'Married'
        when family_status = 'Separated' then 'Separated'
        when family_status = 'Widow' then 'Widowed'
        when family_status = 'Unknown' or family_status is null then 'Unknown'
    else 'Other'
    end as family_status,
     
        housing_type,
        round(family_member_count, 0) as family_member_count,

    -- dimensions
        round(annual_income, 2) as annual_income,
        credit_amount as current_credit_amount,
        annuity_amount as current_annuity_amount,
        case when defaulted = 1 then true else false end as defaulted,
        round(ext_score_1, 0) as ext_score_1,
        round(ext_score_2, 0) as ext_score_2,
        round(ext_score_3, 0) as ext_score_3,

        -- booleans
        owns_car,
        owns_real_estate

    from {{ ref('stg_application') }}

),

bureau_summary as (

    select
        -- primary key
        customer_id,

        -- credit / delinquency 
        count(*) as bureau_credit_count,
        sum(credit_amount) as total_bureau_credit_amount,
        sum(credit_amount_debt) as total_bureau_debt_amount,
        sum(credit_amount_overdue) as total_bureau_overdue_amount,
        sum(credit_prolong_count) as total_credit_prolong_count

    from {{ ref('stg_bureau') }}
    group by customer_id

),

credit_card_summary as (

    select
        -- primary key
        customer_id,

        -- balances
        avg(balance_amount) as avg_credit_card_balance,
        max(balance_amount) as max_credit_card_balance,
        max(credit_limit_amount) as max_credit_card_limit,
        max(days_past_due_at_default) as max_credit_card_days_past_due,
        sum(total_payment_amount) as total_credit_card_payments,
        sum(total_draw_amount) as total_credit_card_draws

    from {{ ref('stg_credit_card_balance') }}
    group by customer_id

),

pos_cash_summary as (

    select
        -- primary key
        customer_id,

        -- installment behavior
        max(installment_count) as max_installment_count,
        max(future_installment_count) as remaining_installment_count,
        max(days_past_due_at_default) as max_pos_days_past_due

    from {{ ref('stg_pos_cash_balance') }}
    group by customer_id

)

select
    
    app.customer_id,
    app.age,
    app.employment_years,
    app.education_level,
    app.family_status,
    app.housing_type,
    app.family_member_count,
    app.annual_income,
    app.current_credit_amount,
    app.current_annuity_amount,
    bureau.bureau_credit_count,
    bureau.total_bureau_credit_amount,
    bureau.total_bureau_debt_amount,
    bureau.total_bureau_overdue_amount,
    bureau.total_credit_prolong_count,
    cc.avg_credit_card_balance,
    cc.max_credit_card_balance,
    cc.max_credit_card_limit,
    cc.total_credit_card_payments,
    cc.total_credit_card_draws,
    cc.max_credit_card_days_past_due,
    pos.max_installment_count,
    pos.remaining_installment_count,
    pos.max_pos_days_past_due,
    app.ext_score_1,
    app.ext_score_2,
    app.ext_score_3,
    app.owns_car,
    app.owns_real_estate,
    app.defaulted

from applications app
left join bureau_summary bureau
    on app.customer_id = bureau.customer_id
left join credit_card_summary cc
    on app.customer_id = cc.customer_id
left join pos_cash_summary pos
    on app.customer_id = pos.customer_id
