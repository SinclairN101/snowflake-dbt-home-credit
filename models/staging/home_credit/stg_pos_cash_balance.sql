select
    -- primary key
    sk_id_prev as prev_application_id,

    -- foreign keys
    sk_id_curr as customer_id,

    -- time
    months_balance as months_from_application,

    -- dimensions
    name_contract_status as contract_status,

    -- installment structure
    cnt_instalment as installment_count,
    cnt_instalment_future as future_installment_count,

    -- delinquency
    sk_dpd as days_past_due,
    sk_dpd_def as days_past_due_at_default

from {{ source('home_credit', 'pos_cash_balance') }}
