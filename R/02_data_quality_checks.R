# ============================================================
# Project: Heart Failure Clinical Statistical Analysis with R
# File: 02_data_quality_checks.R
# Purpose: Assess dataset integrity, completeness, duplicate
# observations, variable validity, and numerical plausibility.
# Language: R
# ============================================================


# ============================================================
# 1. Check dataset dimensions
# Confirm the number of observations and variables.
# ============================================================

dim(heart_failure)

nrow(heart_failure)

ncol(heart_failure)


# ============================================================
# 2. Check variable names
# Confirm that all expected variables are present.
# ============================================================

names(heart_failure)


# ============================================================
# 3. Check variable data types
# Confirm that variables were configured correctly during
# the initial data setup.
# ============================================================

str(heart_failure)


# ============================================================
# 4. Check missing and non-finite values
# Identify missing, undefined, or infinite observations.
# ============================================================

sum(is.na(heart_failure))

colSums(is.na(heart_failure))

sum(
  sapply(
    heart_failure,
    function(x) {
      if (is.numeric(x)) {
        sum(is.nan(x))
      } else {
        0
      }
    }
  )
)

sum(
  sapply(
    heart_failure,
    function(x) {
      if (is.numeric(x)) {
        sum(is.infinite(x))
      } else {
        0
      }
    }
  )
)


# ============================================================
# 5. Check duplicate observations
# Identify completely duplicated patient records.
# ============================================================

sum(duplicated(heart_failure))

heart_failure[duplicated(heart_failure), ]


# ============================================================
# 6. Validate categorical levels
# Confirm that categorical variables contain only the
# intended factor levels.
# ============================================================

levels(heart_failure$anaemia)

levels(heart_failure$diabetes)

levels(heart_failure$high_blood_pressure)

levels(heart_failure$sex)

levels(heart_failure$smoking)

levels(heart_failure$DEATH_EVENT)


# ============================================================
# 7. Inspect numerical value ranges
# Review minimum and maximum values for plausibility.
# ============================================================

range(heart_failure$age)

range(heart_failure$creatinine_phosphokinase)

range(heart_failure$ejection_fraction)

range(heart_failure$platelets)

range(heart_failure$serum_creatinine)

range(heart_failure$serum_sodium)

range(heart_failure$time)


# ============================================================
# 8. Check logically invalid numerical values
# Identify values outside logically possible ranges.
# ============================================================

sum(heart_failure$age <= 0)

sum(heart_failure$creatinine_phosphokinase < 0)

sum(
  heart_failure$ejection_fraction < 0 |
    heart_failure$ejection_fraction > 100
)

sum(heart_failure$platelets < 0)

sum(heart_failure$serum_creatinine < 0)

sum(heart_failure$serum_sodium < 0)

sum(heart_failure$time < 0)


# ============================================================
# 9. Check for constant variables
# Identify variables containing only one unique value,
# which would provide no analytical variation.
# ============================================================

sapply(
  heart_failure,
  function(x) length(unique(x))
)

