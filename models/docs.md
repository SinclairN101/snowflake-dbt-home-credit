{% docs customer_id %}

Stable identifier representing a unique customer across applications, credit records, and repayment behavior.
This field is the primary join key used to consolidate a customer’s full credit profile.

{% enddocs %}


{% docs prev_application_id %}

Identifier representing a historical loan application submitted by a customer.
Used to track prior credit requests and outcomes before the current application.

{% enddocs %}


{% docs bureau_id %}

Unique identifier for an individual credit account reported by the external credit bureau.
Each record represents a single loan or credit line held by the customer.

{% enddocs %}


{% docs contract_type %}

Classification of the loan contract, indicating the structure of the credit product,
such as a cash loan or a revolving credit facility.

{% enddocs %}


{% docs contract_status %}

Current lifecycle status of a contract or application,
reflecting outcomes such as active, closed, approved, or refused.

{% enddocs %}


{% docs payment_type %}

Method by which loan payments are scheduled or processed,
such as bank transfer, cash, or direct debit.

{% enddocs %}


{% docs application_party_type %}

Indicates the structure of the loan application,
such as whether the application was submitted individually or as part of a group.

{% enddocs %}


{% docs client_tenure_type %}

Categorization of the customer based on their relationship history with the lender,
often distinguishing new customers from returning ones.

{% enddocs %}


{% docs goods_category %}

Category of goods or services financed by the loan,
used to understand the purpose and risk profile of the credit.

{% enddocs %}


{% docs portfolio_type %}

Internal portfolio classification used by the lender to group similar loan products
for reporting and risk management purposes.

{% enddocs %}


{% docs application_channel %}

Channel through which the loan application was submitted,
such as in-branch, online, or through a partner.

{% enddocs %}


{% docs product_type %}

Specific financial product associated with the loan,
representing variations within broader contract types.

{% enddocs %}


{% docs loan_purpose %}

Declared purpose for which the loan was requested,
providing insight into customer intent and potential credit risk.

{% enddocs %}


{% docs rejection_reason_code %}

Standardized code indicating the primary reason a loan application was rejected,
when applicable.

{% enddocs %}


{% docs credit_type %}

Type of credit account reported by the bureau,
such as consumer loan, credit card, or mortgage.

{% enddocs %}


{% docs credit_status %}

Indicates whether the credit account is currently active or has been closed,
reflecting the customer’s ongoing credit exposure.

{% enddocs %}


{% docs credit_prolong_count %}

Number of times the repayment schedule for a credit account was extended,
often signaling repayment difficulty or restructuring.

{% enddocs %}


{% docs credit_amount %}

Original or approved credit amount associated with a loan or credit account.

{% enddocs %}


{% docs credit_amount_debt %}

Outstanding unpaid balance remaining on the credit account at the reporting time.

{% enddocs %}


{% docs credit_amount_limit %}

Maximum credit limit available to the customer on the account,
primarily relevant for revolving credit products.

{% enddocs %}


{% docs credit_amount_overdue %}

Portion of the credit balance that is past due and has not been repaid on schedule.

{% enddocs %}


{% docs credit_age_years %}

Time in years since the credit account was opened,
used to assess credit history length.

{% enddocs %}


{% docs credit_end_date_years %}

Scheduled end date of the credit account expressed in years relative to application,
representing the planned loan maturity.

{% enddocs %}


{% docs credit_close_date_years %}

Actual date the credit account was closed,
expressed in years relative to the application date.

{% enddocs %}


{% docs months_from_application %}

Relative month offset from the current loan application date.
Negative values indicate months prior to the application.

{% enddocs %}


{% docs balance_amount %}

Outstanding balance on a credit account during the reporting period.

{% enddocs %}


{% docs credit_limit_amount %}

Maximum amount of credit that can be drawn on the account at any given time.

{% enddocs %}


{% docs principal_receivable_amount %}

Outstanding principal amount still owed by the customer,
excluding interest and fees.

{% enddocs %}


{% docs receivable_amount %}

Total receivable amount excluding interest,
representing the core balance owed.

{% enddocs %}


{% docs total_receivable_amount %}

Total receivable amount including principal, interest, and applicable fees.

{% enddocs %}


{% docs minimum_payment_amount %}

Minimum payment required to keep the account in good standing for the period.

{% enddocs %}


{% docs current_payment_amount %}

Payment amount made by the customer during the reporting period.

{% enddocs %}


{% docs total_payment_amount %}

Total payments applied to the account during the reporting period.

{% enddocs %}


{% docs atm_draw_amount %}

Amount of credit drawn through ATM transactions during the reporting period.

{% enddocs %}


{% docs pos_draw_amount %}

Amount of credit drawn through point-of-sale transactions.

{% enddocs %}


{% docs other_draw_amount %}

Amount of credit drawn through non-ATM and non-POS transaction types.

{% enddocs %}


{% docs total_draw_amount %}

Total amount of credit drawn across all transaction channels.

{% enddocs %}


{% docs atm_draw_count %}

Number of ATM withdrawal transactions during the reporting period.

{% enddocs %}


{% docs pos_draw_count %}

Number of point-of-sale transactions during the reporting period.

{% enddocs %}


{% docs other_draw_count %}

Number of non-ATM and non-POS draw transactions.

{% enddocs %}


{% docs total_draw_count %}

Total number of draw transactions recorded during the reporting period.

{% enddocs %}


{% docs matured_installment_count %}

Cumulative number of installments that have reached their due date.

{% enddocs %}


{% docs installment_count %}

Total number of installments associated with the loan.

{% enddocs %}


{% docs future_installment_count %}

Number of installments that remain unpaid as of the reporting period.

{% enddocs %}


{% docs days_past_due %}

Number of days a payment is overdue relative to its scheduled due date.

{% enddocs %}


{% docs days_past_due_at_default %}

Number of days past due at the point when the account is considered in default.

{% enddocs %}


{% docs application_amount %}

Total amount requested by the customer in the loan application.

{% enddocs %}


{% docs annuity_amount %}

Scheduled periodic payment amount for the loan.

{% enddocs %}


{% docs payment_count %}

Number of scheduled payments required to fully repay the loan.

{% enddocs %}


{% docs primary_interest_rate %}

Primary interest rate applied to the loan,
expressed as a percentage.

{% enddocs %}


{% docs privileged_interest_rate %}

Reduced or preferential interest rate applied under specific conditions.

{% enddocs %}


{% docs down_payment_rate_applied %}

Percentage of the purchase price paid upfront by the customer.

{% enddocs %}


{% docs age_years %}

Customer age in years at the time of the loan application.

{% enddocs %}


{% docs employment_years %}

Length of time the customer has been employed,
used as a stability indicator.

{% enddocs %}


{% docs annual_income %}

Total annual income declared by the customer at application time.

{% enddocs %}


{% docs income_type %}

Category describing the source of the customer’s income.

{% enddocs %}


{% docs occupation_type %}

Occupation category reported by the customer,
often used for segmentation and risk analysis.

{% enddocs %}


{% docs education_level %}

Highest education level attained by the customer.

{% enddocs %}


{% docs family_status %}

Marital or family status of the customer at application time.

{% enddocs %}


{% docs housing_type %}

Customer’s housing situation,
such as renting, owning, or living with family.

{% enddocs %}


{% docs family_member_count %}

Number of household members reported by the customer.

{% enddocs %}


{% docs defaulted %}

Indicates whether the loan ultimately defaulted,
used as the primary outcome variable for risk analysis.

{% enddocs %}


{% docs owns_car %}

Boolean indicator showing whether the customer owns a car.

{% enddocs %}


{% docs owns_real_estate %}

Boolean indicator showing whether the customer owns real estate.

{% enddocs %}


{% docs goods_price %}

Price of the goods or services financed by the loan,
which may differ from the credit amount due to down payments or fees.

{% enddocs %}


{% docs ext_score_2 %}

External credit score used to assess default risk,
typically derived from third-party credit data.

{% enddocs %}


{% docs ext_score_1 %}

External credit score reflecting historical credit behavior,
commonly used as a key risk indicator.

{% enddocs %}


{% docs ext_score_4 %}

Additional external credit score that may be available for a subset of customers.

{% enddocs %}


{% docs ext_score_3 %}

External credit score that complements other scores to improve risk evaluation.

{% enddocs %}


{% docs is_last_application_for_contract %}

Indicates whether this application represents the final application tied to a specific contract.

{% enddocs %}


{% docs is_last_application_in_day %}

Indicates whether this was the final application submitted by the customer on a given day.

{% enddocs %}


{% docs was_insured_on_approval %}

Indicates whether the loan was approved with insurance coverage.

{% enddocs %}
