  
select 
    -- primary key
    sk_id_prev as prev_application_id,

    --  foreign keys 
    sk_id_curr as customer_id,

    -- dimensions
    name_contract_type as contract_type,
    name_contract_status as contract_status,
    name_payment_type as payment_type,
    name_type_suite as application_party_type,
    name_client_type as client_tenure_type,
    name_goods_category as goods_category,
    name_portfolio as portfolio_type,
    channel_type as application_channel,
    name_product_type as product_type,
    name_cash_loan_purpose as loan_purpose,
    code_reject_reason as rejection_reason_code,

   -- financial measures

    amt_application as application_amount,
    amt_credit as credit_amount,
    amt_annuity as annuity_amount,
    round(cnt_payment, 0) as payment_count,

    -- rates
    round(rate_interest_primary * 100, 2) as primary_interest_rate,
    round(rate_interest_privileged * 100, 2) as privileged_interest_rate,
    round(rate_down_payment * 100, 2) as down_payment_rate_applied,  

-- boolean
    flag_last_appl_per_contract as is_last_application_for_contract,
    case 
      when nflag_last_appl_in_day = 1 then true else false
    end as is_last_application_in_day,
    case 
      when nflag_insured_on_approval = '1.0' then true else false
    end as was_insured_on_approval

from {{ source('home_credit', 'previous_application') }}
