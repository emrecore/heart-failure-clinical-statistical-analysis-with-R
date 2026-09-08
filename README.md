# Heart Failure Clinical Statistical Analysis with R

## Overview

This project analyzes clinical data from patients with heart failure using R. The objective is to examine patient characteristics, clinical measurements, mortality outcomes, and statistical relationships between relevant health variables.

The dataset is publicly available and contains clinical records of 299 patients with heart failure collected during a follow-up period. It includes 12 predictor variables and one mortality outcome variable. The dataset contains no missing values.


## Healthcare Context

Heart failure is a serious cardiovascular condition in which the heart is unable to pump blood effectively enough to meet the body's needs.

Clinical characteristics such as age, ejection fraction, serum creatinine, serum sodium, diabetes, anaemia, smoking status, and hypertension may be associated with patient outcomes.

This project uses statistical analysis in R to explore these relationships and identify clinically relevant patterns within the dataset.


## Analysis Scope

    Data Import
    → Data Type Configuration
    → Data Quality Assessment
    → Descriptive Statistics
    → Data Visualization
    → Group Comparisons
    → Hypothesis Testing
    → Correlation Analysis
    → Regression Analysis
    → Final Clinical Insights


## Data Model

The dataset consists of the following variables:

| Variable | Purpose |
|---|---|
| `age` | Age of the patient |
| `anaemia` | Indicates whether the patient has anaemia |
| `creatinine_phosphokinase` | CPK enzyme level in the blood |
| `diabetes` | Indicates whether the patient has diabetes |
| `ejection_fraction` | Percentage of blood leaving the heart during contraction |
| `high_blood_pressure` | Indicates whether the patient has hypertension |
| `platelets` | Platelet count |
| `serum_creatinine` | Serum creatinine level |
| `serum_sodium` | Serum sodium level |
| `sex` | Patient sex |
| `smoking` | Indicates whether the patient smokes |
| `time` | Follow-up period |
| `DEATH_EVENT` | Indicates whether the patient died during the follow-up period |


## Key Analyses

The statistical analysis covers:

- Patient population characteristics
- Mortality outcome distribution
- Clinical variable distributions
- Comparison of survivors and non-survivors
- Relationships between categorical variables
- Correlations between continuous clinical variables
- Statistical hypothesis testing
- Identification of variables associated with mortality
- Regression-based outcome analysis
- Data quality checks


## R Skills Demonstrated

- Data import
- Data type configuration
- Data quality assessment
- Factor handling
- Descriptive statistics
- Data visualization
- `ggplot2`
- Grouped summaries
- Hypothesis testing
- Chi-square tests
- t-tests
- Non-parametric tests
- Correlation analysis
- Regression analysis
- Confidence intervals
- Statistical interpretation


## Repository Structure

    heart-failure-clinical-statistical-analysis-r/
    │
    ├── README.md
    │
    ├── data/
    │   └── heart_failure_clinical_records_dataset.csv
    │
    ├── R/
    │   ├── 01_data_import_and_setup.R
    │   ├── 02_data_quality_checks.R
    │   ├── 03_descriptive_statistics.R
    │   ├── 04_data_visualization.R
    │   ├── 05_group_comparisons.R
    │   ├── 06_hypothesis_testing.R
    │   ├── 07_correlation_analysis.R
    │   ├── 08_regression_analysis.R
    │   └── 09_final_clinical_insights.R
    │
    └── docs/
        ├── healthcare_context.md
        ├── dataset_description.md
        ├── statistical_methods.md
        └── insights_summary.md


## Healthcare Value

This project demonstrates how R can be used to transform clinical patient data into interpretable statistical insights.

The analysis provides greater visibility into patient characteristics, mortality patterns, clinical measurements, and potential relationships between health variables and patient outcomes.

The project illustrates how statistical methods can support evidence-based analysis in healthcare and clinical research.


## AI Usage

AI was used as a review and improvement tool during development. The R code, statistical analysis logic, variable classification, and project structure were created primarily by me.

AI was used to review code, identify potential issues, improve clarity, and suggest refinements. All suggestions were evaluated, adapted, and validated by me before being included.