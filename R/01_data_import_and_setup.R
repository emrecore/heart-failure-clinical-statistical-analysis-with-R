# ============================================================
# Project: Heart Failure Clinical Statistical Analysis with R
# File: 01_data_import_and_setup.R
# Purpose: Import the clinical dataset, inspect its structure,
# and configure variables for statistical analysis.
# Language: R
# ============================================================


# ============================================================
# 1. Import dataset
# ============================================================

heart_failure <- read.csv(
  "data/heart_failure_clinical_records_dataset.csv"
)


# ============================================================
# 2. Inspect raw dataset structure
# Review observations, variables, and imported data types.
# ============================================================

str(heart_failure)


# ============================================================
# 3. Configure numerical variables
# Continuous and quantitative variables are stored as numeric.
# ============================================================

heart_failure$age <- as.numeric(heart_failure$age)

heart_failure$creatinine_phosphokinase <- as.numeric(
  heart_failure$creatinine_phosphokinase
)

heart_failure$ejection_fraction <- as.numeric(
  heart_failure$ejection_fraction
)

heart_failure$platelets <- as.numeric(
  heart_failure$platelets
)

heart_failure$serum_creatinine <- as.numeric(
  heart_failure$serum_creatinine
)

heart_failure$serum_sodium <- as.numeric(
  heart_failure$serum_sodium
)

heart_failure$time <- as.numeric(
  heart_failure$time
)


# ============================================================
# 4. Configure categorical variables
# Binary variables are converted to factors with descriptive labels.
# ============================================================

heart_failure$anaemia <- factor(
  heart_failure$anaemia,
  levels = c(0, 1),
  labels = c("No", "Yes")
)

heart_failure$diabetes <- factor(
  heart_failure$diabetes,
  levels = c(0, 1),
  labels = c("No", "Yes")
)

heart_failure$high_blood_pressure <- factor(
  heart_failure$high_blood_pressure,
  levels = c(0, 1),
  labels = c("No", "Yes")
)

heart_failure$sex <- factor(
  heart_failure$sex,
  levels = c(0, 1),
  labels = c("Female", "Male")
)

heart_failure$smoking <- factor(
  heart_failure$smoking,
  levels = c(0, 1),
  labels = c("No", "Yes")
)

heart_failure$DEATH_EVENT <- factor(
  heart_failure$DEATH_EVENT,
  levels = c(0, 1),
  labels = c("No death event", "Death event")
)


# ============================================================
# 5. Inspect configured dataset structure
# Confirm that numerical and categorical variables were
# assigned the intended data types.
# ============================================================

str(heart_failure)