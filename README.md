# Home Credit dbt Project

# Purpose

I built this project to learn and practice dbt fundamentals while working with a realistic lending dataset. The goal was to model raw data into clean, well-documented, analytics-ready tables using standard analytics engineering patterns.

This project focuses on:

* clear dbt project structure
* clean staging models
* basic testing and documentation
* realistic use cases for customer credit and loan analysis

# Dataset

This project uses the **Home Credit Default Risk** dataset from Kaggle:
[https://www.kaggle.com/datasets/julianocosta/home-credit](https://www.kaggle.com/datasets/julianocosta/home-credit)

The dataset contains loan application data and customer credit history, representing a real-world lending and customer operations scenario.

The following tables were loaded into Snowflake:

| Raw Table              | Description                               |
| ---------------------- | ----------------------------------------- |
| `application`          | Loan applications and customer attributes |
| `bureau`               | Credit bureau history                     |
| `previous_application` | Customer loan application history         |
| `credit_card_balance`  | Credit card balance snapshots             |
| `pos_cash_balance`     | Point-of-sale cash balance history        |

The `installments_payments` table was intentionally excluded due to Snowflake trial size limits and to keep the project scope focused.

# Architecture

The project follows a standard modern analytics stack pattern:

```
Kaggle CSVs
    |
    v
Snowflake (RAW schema)
    |
    v
dbt Staging Models (views)
    |
    v
dbt Intermediate Models (views)
    |
    v
Analytics Marts (tables)
    |
    v
Snapshots (tables)   

```

* **Snowflake** is used as the data warehouse
* **dbt** handles transformations, testing, and documentation
* Raw data is preserved and all transformations happen in dbt

# dbt Project Structure
```
models/
├── staging/
│   └── home_credit/
├── intermediate/
├── marts/
│   ├── dim_customer
│   └── fct_customer_credit_risk
├── docs.md
snapshots/
├── application_snapshot
```
# Testing and Documentation

This project includes:

* column-level tests (`not_null`, `Unique` & `accepted_values`)
* one YAML file per model
* column documentation using dbt docs blocks stored in Markdown

# Business Questions Answered

### 1. How does default behavior vary across different income types?

This question helps identify whether certain income sources are associated with higher concentrations of defaults, which can inform underwriting policies and portfolio risk monitoring.

```sql
select
    dc.income_type,
    count(*) as customer_count,
    sum(case when fr.defaulted = true then 1 else 0 end) as default_count
from DBT_HOME_CREDIT.RAW.DIM_CUSTOMER dc
join DBT_HOME_CREDIT.RAW.FCT_CUSTOMER_CREDIT_RISK fr
    on dc.customer_id = fr.customer_id
group by dc.income_type
order by default_count desc;
```

### 2. How does prior credit restructuring relate to default outcomes?

Repayment prolongations often signal financial stress. This question focuses on customers who needed extensions on their loans and examines how that behavior relates to default.

```sql
select
    customer_id,
    total_credit_prolong_count,
    total_bureau_debt_amount,
    total_bureau_overdue_amount,
    defaulted
from DBT_HOME_CREDIT.RAW.FCT_CUSTOMER_CREDIT_RISK
where total_credit_prolong_count > 0;
```

### 3. How does payment delinquency across products relate to default?

This question compares delinquency behavior across credit cards and POS cash loans to understand which products show early risk signals.

```sql
select
    customer_id,
    max_credit_card_days_past_due,
    max_pos_days_past_due,
    defaulted
from DBT_HOME_CREDIT.RAW.FCT_CUSTOMER_CREDIT_RISK
where
    max_credit_card_days_past_due > 0
    or max_pos_days_past_due > 0;
```

# Summary

This project demonstrates my ability to:

* work with a real-world dataset
* model data using dbt best practices
* apply testing and documentation
* structure a maintainable analytics project in Snowflake
