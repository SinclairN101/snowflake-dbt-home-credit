{% docs stg_application__customer_id %}

Unique identifier for the customer associated with the loan application.
Used as the primary join key across application and credit history tables.

{% enddocs %}


{% docs stg_application__contract_type %}

Type of loan contract applied for, such as cash loans or revolving loans.

{% enddocs %}


{% docs stg_application__credit_amount %}

Total credit amount requested in the loan application.

{% enddocs %}


{% docs stg_application__annuity_amount %}

Monthly annuity payment associated with the loan.

{% enddocs %}


{% docs stg_application__goods_price %}

Price of the goods financed by the loan, if applicable.

{% enddocs %}


{% docs stg_application__annual_income %}

Total declared annual income of the applicant at the time of application.

{% enddocs %}


{% docs stg_application__income_type %}

Source of the applicant’s income, such as working, pensioner, or commercial associate.

{% enddocs %}


{% docs stg_application__occupation_type %}

Occupation category reported by the applicant.

{% enddocs %}


{% docs stg_application__education_level %}

Highest education level attained by the applicant.

{% enddocs %}


{% docs stg_application__family_status %}

Marital or family status of the applicant.

{% enddocs %}


{% docs stg_application__housing_type %}

Type of housing the applicant lives in, such as rented or owned.

{% enddocs %}


{% docs stg_application__family_member_count %}

Number of family members reported by the applicant.

{% enddocs %}


{% docs stg_application__age_years %}

Applicant age in years at the time of application.

Derived from the source field days_birth.

{% enddocs %}


{% docs stg_application__employment_years %}

Number of years the applicant has been employed.
Negative values in the source data are treated as null.

{% enddocs %}


{% docs stg_application__ext_score_1 %}

External credit score provided by a third-party data source.

{% enddocs %}


{% docs stg_application__ext_score_2 %}

External credit score provided by a second third-party data source.

{% enddocs %}


{% docs stg_application__ext_score_3 %}

External credit score provided by a third-party data source.

{% enddocs %}


{% docs stg_application__owns_car %}

Indicates whether the applicant owns a car.

{% enddocs %}


{% docs stg_application__owns_real_estate %}

Indicates whether the applicant owns real estate.

{% enddocs %}


{% docs stg_application__defaulted %}

Indicates whether the loan defaulted.
A value of 1 represents default, and 0 represents no default.

{% enddocs %}
