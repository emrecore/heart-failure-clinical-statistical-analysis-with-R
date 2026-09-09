# ============================================================
# Project: Heart Failure Clinical Statistical Analysis with R
# File: 04_data_visualization.R
# Purpose: Visualize numerical clinical distributions,
# categorical patient characteristics, and mortality outcomes.
# Language: R
# ============================================================


# ============================================================
# 1. Load visualization package
# ggplot2 is used to create statistical visualizations
# throughout the analysis.
# ============================================================

library(ggplot2)


# ============================================================
# 2. Visualize age distribution
# Display the distribution of patient age.
# ============================================================

ggplot(
  heart_failure,
  aes(x = age)
) +
  geom_histogram(
    bins = 20
  ) +
  labs(
    title = "Distribution of Patient Age",
    x = "Age",
    y = "Frequency"
  ) +
  theme_minimal()


# ============================================================
# 3. Visualize creatinine phosphokinase distribution
# Display the distribution of CPK enzyme levels.
# ============================================================

ggplot(
  heart_failure,
  aes(x = creatinine_phosphokinase)
) +
  geom_histogram(
    bins = 30
  ) +
  labs(
    title = "Distribution of Creatinine Phosphokinase",
    x = "Creatinine Phosphokinase",
    y = "Frequency"
  ) +
  theme_minimal()


# ============================================================
# 4. Visualize ejection fraction distribution
# Display the distribution of cardiac ejection fraction.
# ============================================================

ggplot(
  heart_failure,
  aes(x = ejection_fraction)
) +
  geom_histogram(
    bins = 20
  ) +
  labs(
    title = "Distribution of Ejection Fraction",
    x = "Ejection Fraction (%)",
    y = "Frequency"
  ) +
  theme_minimal()


# ============================================================
# 5. Visualize platelet distribution
# Display the distribution of platelet counts.
# ============================================================

ggplot(
  heart_failure,
  aes(x = platelets)
) +
  geom_histogram(
    bins = 30
  ) +
  labs(
    title = "Distribution of Platelet Count",
    x = "Platelets",
    y = "Frequency"
  ) +
  theme_minimal()


# ============================================================
# 6. Visualize serum creatinine distribution
# Display the distribution of serum creatinine levels.
# ============================================================

ggplot(
  heart_failure,
  aes(x = serum_creatinine)
) +
  geom_histogram(
    bins = 30
  ) +
  labs(
    title = "Distribution of Serum Creatinine",
    x = "Serum Creatinine",
    y = "Frequency"
  ) +
  theme_minimal()


# ============================================================
# 7. Visualize serum sodium distribution
# Display the distribution of serum sodium levels.
# ============================================================

ggplot(
  heart_failure,
  aes(x = serum_sodium)
) +
  geom_histogram(
    bins = 20
  ) +
  labs(
    title = "Distribution of Serum Sodium",
    x = "Serum Sodium",
    y = "Frequency"
  ) +
  theme_minimal()


# ============================================================
# 8. Visualize follow-up time distribution
# Display the distribution of patient follow-up periods.
# ============================================================

ggplot(
  heart_failure,
  aes(x = time)
) +
  geom_histogram(
    bins = 20
  ) +
  labs(
    title = "Distribution of Follow-up Time",
    x = "Follow-up Time",
    y = "Frequency"
  ) +
  theme_minimal()


# ============================================================
# 9. Visualize numerical variables with boxplots
# Display numerical distributions and visually identify
# unusually high or low observations.
# ============================================================

ggplot(
  heart_failure,
  aes(y = age)
) +
  geom_boxplot() +
  labs(
    title = "Distribution of Patient Age",
    y = "Age"
  ) +
  theme_minimal()


ggplot(
  heart_failure,
  aes(y = creatinine_phosphokinase)
) +
  geom_boxplot() +
  labs(
    title = "Distribution of Creatinine Phosphokinase",
    y = "Creatinine Phosphokinase"
  ) +
  theme_minimal()


ggplot(
  heart_failure,
  aes(y = ejection_fraction)
) +
  geom_boxplot() +
  labs(
    title = "Distribution of Ejection Fraction",
    y = "Ejection Fraction (%)"
  ) +
  theme_minimal()


ggplot(
  heart_failure,
  aes(y = platelets)
) +
  geom_boxplot() +
  labs(
    title = "Distribution of Platelet Count",
    y = "Platelets"
  ) +
  theme_minimal()


ggplot(
  heart_failure,
  aes(y = serum_creatinine)
) +
  geom_boxplot() +
  labs(
    title = "Distribution of Serum Creatinine",
    y = "Serum Creatinine"
  ) +
  theme_minimal()


ggplot(
  heart_failure,
  aes(y = serum_sodium)
) +
  geom_boxplot() +
  labs(
    title = "Distribution of Serum Sodium",
    y = "Serum Sodium"
  ) +
  theme_minimal()


ggplot(
  heart_failure,
  aes(y = time)
) +
  geom_boxplot() +
  labs(
    title = "Distribution of Follow-up Time",
    y = "Follow-up Time"
  ) +
  theme_minimal()


# ============================================================
# 10. Visualize anaemia distribution
# Display the number of patients with and without anaemia.
# ============================================================

ggplot(
  heart_failure,
  aes(x = anaemia)
) +
  geom_bar() +
  labs(
    title = "Anaemia Distribution",
    x = "Anaemia",
    y = "Number of Patients"
  ) +
  theme_minimal()


# ============================================================
# 11. Visualize diabetes distribution
# Display the number of patients with and without diabetes.
# ============================================================

ggplot(
  heart_failure,
  aes(x = diabetes)
) +
  geom_bar() +
  labs(
    title = "Diabetes Distribution",
    x = "Diabetes",
    y = "Number of Patients"
  ) +
  theme_minimal()


# ============================================================
# 12. Visualize high blood pressure distribution
# Display the number of patients with and without
# high blood pressure.
# ============================================================

ggplot(
  heart_failure,
  aes(x = high_blood_pressure)
) +
  geom_bar() +
  labs(
    title = "High Blood Pressure Distribution",
    x = "High Blood Pressure",
    y = "Number of Patients"
  ) +
  theme_minimal()


# ============================================================
# 13. Visualize sex distribution
# Display the number of female and male patients.
# ============================================================

ggplot(
  heart_failure,
  aes(x = sex)
) +
  geom_bar() +
  labs(
    title = "Sex Distribution",
    x = "Sex",
    y = "Number of Patients"
  ) +
  theme_minimal()


# ============================================================
# 14. Visualize smoking distribution
# Display the number of smokers and non-smokers.
# ============================================================

ggplot(
  heart_failure,
  aes(x = smoking)
) +
  geom_bar() +
  labs(
    title = "Smoking Status Distribution",
    x = "Smoking",
    y = "Number of Patients"
  ) +
  theme_minimal()


# ============================================================
# 15. Visualize mortality outcome distribution
# Display the number of patients with and without a recorded
# death event during follow-up.
# ============================================================

ggplot(
  heart_failure,
  aes(x = DEATH_EVENT)
) +
  geom_bar() +
  labs(
    title = "Mortality Outcome Distribution",
    x = "Mortality Outcome",
    y = "Number of Patients"
  ) +
  theme_minimal()

