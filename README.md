# Home Credit dbt Project

## Purpose


I built this project to learn and practice dbt fundamentals while working with a realistic lending dataset. The goal was to model raw data into clean, well-documented, analytics-ready tables using standard analytics engineering patterns.

This project focuses on:

* clear dbt project structure
* clean staging models
* basic testing and documentation
* realistic use cases for customer credit and loan analysis

## Dataset

This project uses the **Home Credit Default Risk** dataset from Kaggle:
[https://www.kaggle.com/datasets/julianocosta/home-credit-default-risk](https://www.kaggle.com/datasets/julianocosta/home-credit-default-risk)

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

---

## Architecture

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
```

* **Snowflake** is used as the data warehouse
* **dbt** handles transformations, testing, and documentation
* Raw data is preserved and all transformations happen in dbt

---

## dbt Project Structure

More to come as I build this project out 

---

## Testing and Documentation

This project includes:

* column-level tests (`not_null`, `Unique` & `accepted_values`)
* one YAML file per model
* column documentation using dbt docs blocks stored in Markdown

---

## Business Questions Answered

More to come as I build this project out 

---

## Summary

This project demonstrates my ability to:

* work with a real-world dataset
* model data using dbt best practices
* apply testing and documentation
* structure a maintainable analytics project in Snowflake
