select
    -- primary key
    sk_id_prev as prev_application_id,

    -- foreign keys
    sk_id_curr as customer_id,

    -- time
    months_balance as months_from_application,

    -- dimensions
    name_contract_status as contract_status,

    -- financial measures
    amt_balance as balance_amount,
    amt_credit_limit_actual as credit_limit_amount,
    amt_receivable_principal as principal_receivable_amount,
    amt_recivable as receivable_amount,
    amt_total_receivable as total_receivable_amount,

    -- payments
    amt_inst_min_regularity as minimum_payment_amount,
    amt_payment_current as current_payment_amount,
    amt_payment_total_current as total_payment_amount,

    -- drawings
    amt_drawings_atm_current as atm_draw_amount,
    amt_drawings_pos_current as pos_draw_amount,
    amt_drawings_other_current as other_draw_amount,
    amt_drawings_current as total_draw_amount,

    -- drawing counts
    cnt_drawings_atm_current as atm_draw_count,
    cnt_drawings_pos_current as pos_draw_count,
    cnt_drawings_other_current as other_draw_count,
    cnt_drawings_current as total_draw_count,

    -- delinquency
    cnt_instalment_mature_cum as matured_installment_count,
    sk_dpd as days_past_due,
    sk_dpd_def as days_past_due_at_default

from {{ source('home_credit', 'credit_card_balance') }}
