select
    -- Primary Key
    customer_id,

    -- current credit exposure
    current_credit_amount,
    current_annuity_amount,

    -- bureau exposure
    bureau_credit_count,
    total_bureau_credit_amount,
    total_bureau_debt_amount,
    total_bureau_overdue_amount,
    total_credit_prolong_count,

    -- credit card behavior
    avg_credit_card_balance,
    max_credit_card_balance,
    max_credit_card_limit,
    total_credit_card_payments,
    total_credit_card_draws,
    max_credit_card_days_past_due,

    -- pos / installment behavior
    max_installment_count,
    remaining_installment_count,
    max_pos_days_past_due,

    -- outcome
    defaulted

from {{ ref('int_customer_credit_summary') }}
