# ============================================================
# Project: Heart Failure Clinical Statistical Analysis with R
# File: 03_descriptive_statistics.R
# Purpose: Summarize patient characteristics, clinical
# measurements, and mortality outcome distributions.
# Language: R
# ============================================================


# ============================================================
# 1. Define variable groups
# Separate numerical clinical measurements from categorical
# patient characteristics.
# ============================================================

numerical_variables <- c(
  "age",
  "creatinine_phosphokinase",
  "ejection_fraction",
  "platelets",
  "serum_creatinine",
  "serum_sodium",
  "time"
)

categorical_variables <- c(
  "anaemia",
  "diabetes",
  "high_blood_pressure",
  "sex",
  "smoking"
)


# ============================================================
# 2. Summarize patient population size
# Report the total number of patient records included in
# the analysis.
# ============================================================

nrow(heart_failure)


# ============================================================
# 3. Summarize numerical variables
# Calculate central tendency, dispersion, quartiles, and
# observed ranges for quantitative clinical variables.
# ============================================================

numerical_summary <- data.frame(
  Variable = numerical_variables,
  
  N = sapply(
    heart_failure[numerical_variables],
    function(x) sum(!is.na(x))
  ),
  
  Mean = sapply(
    heart_failure[numerical_variables],
    mean,
    na.rm = TRUE
  ),
  
  Median = sapply(
    heart_failure[numerical_variables],
    median,
    na.rm = TRUE
  ),
  
  Standard_Deviation = sapply(
    heart_failure[numerical_variables],
    sd,
    na.rm = TRUE
  ),
  
  Minimum = sapply(
    heart_failure[numerical_variables],
    min,
    na.rm = TRUE
  ),
  
  Q1 = sapply(
    heart_failure[numerical_variables],
    function(x) quantile(x, 0.25, na.rm = TRUE)
  ),
  
  Q3 = sapply(
    heart_failure[numerical_variables],
    function(x) quantile(x, 0.75, na.rm = TRUE)
  ),
  
  IQR = sapply(
    heart_failure[numerical_variables],
    IQR,
    na.rm = TRUE
  ),
  
  Maximum = sapply(
    heart_failure[numerical_variables],
    max,
    na.rm = TRUE
  )
)

numerical_summary[, -1] <- round(
  numerical_summary[, -1],
  2
)

numerical_summary


# ============================================================
# 4. Summarize categorical patient characteristics
# Calculate absolute and relative frequencies for categorical
# patient characteristics.
# ============================================================

categorical_summary <- do.call(
  rbind,
  lapply(
    categorical_variables,
    function(variable) {
      
      counts <- table(
        heart_failure[[variable]]
      )
      
      percentages <- prop.table(
        counts
      ) * 100
      
      data.frame(
        Variable = variable,
        Category = names(counts),
        Count = as.vector(counts),
        Percentage = round(
          as.vector(percentages),
          2
        )
      )
    }
  )
)

row.names(categorical_summary) <- NULL

categorical_summary


# ============================================================
# 5. Summarize mortality outcome distribution
# Report the number and percentage of patients with and
# without a recorded death event during follow-up.
# ============================================================

mortality_count <- table(
  heart_failure$DEATH_EVENT
)

mortality_percentage <- prop.table(
  mortality_count
) * 100

mortality_summary <- data.frame(
  Outcome = names(mortality_count),
  Count = as.vector(mortality_count),
  Percentage = round(
    as.vector(mortality_percentage),
    2
  )
)

mortality_summary

