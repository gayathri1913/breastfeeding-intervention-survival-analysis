# breastfeeding-intervention-survival-analysis
SAS-based statistical analysis of randomized interventions to improve breastfeeding initiation and duration using logistic regression and survival analysis.
# Breastfeeding Initiation and Duration: SAS Analysis of Randomized Interventions

##  Project Overview
This project analyzes data from a **two-phase randomized study** evaluating the impact of **In-Hospital** and **At-Home** interventions on breastfeeding initiation and duration. The analysis was conducted using **SAS** to perform descriptive statistics, logistic regression, and survival analysis (Cox proportional hazards modeling) to assess intervention effectiveness.

---

##  Study Aims
1. **Aim 1:** Test whether the In-Hospital Intervention* increased breastfeeding initiation rates compared to the In-Hospital Control group.
2. **Aim 2:** For mothers who initiated breastfeeding in hospital, test whether the *At-Home Intervention* prolonged breastfeeding duration compared to the At-Home Control group.
3. **Aim 3:** Assess whether the *At-Home Intervention* effect was modified by receiving the In-Hospital Intervention (effect modification/interaction analysis).

---

##  Dataset
- **Source:** Hypothetical dataset (`BFStudy.xlsx`) based on a study led by the Slone Epidemiology Unit, Boston University.
- **Sample:**
  - Phase 1: 1600 participants randomized to In-Hospital Intervention or Control.
  - Phase 2: 1390 breastfeeding initiators randomized to At-Home Intervention or Control.
- **Key Variables:** maternal age, education, employment, baby’s sex, birthweight, breastfeeding initiation status, breastfeeding duration (weeks), intervention assignments.

⚠️ *Raw data not included due to confidentiality.*

---

##  Tools & Statistical Methods
- **Software:** SAS
- **Aim 1:**
  - Descriptive comparison of maternal characteristics by in-hospital intervention group.
  - Logistic regression (unadjusted and adjusted) for breastfeeding initiation.
- **Aim 2:**
  - Descriptive comparison by at-home intervention group (among breastfeeding initiators).
  - Cox proportional hazards model for breastfeeding cessation (unadjusted and adjusted).
- **Aim 3:**
  - Adjusted Cox model with At-Home × In-Hospital interaction term.
  - Stratified Cox models by In-Hospital intervention status.

---

##  Key Findings
- **Aim 1:** In-Hospital Intervention increased odds of breastfeeding initiation by ~49% (adjusted OR = 1.52, 95% CI: 1.13–2.06, p = 0.0062).
- **Aim 2:** At-Home Intervention reduced risk of cessation by 19% (adjusted HR = 0.81, 95% CI: 0.69–0.96, p = 0.0116).
- **Aim 3:** No statistically significant interaction between interventions (p = 0.711). Effects of At-Home Intervention were similar regardless of In-Hospital Intervention status.

---

## Author
**Gayathri Karthikeyan**  
Master of Public Health (MPH), Epidemiology & Biostatistics  
Boston University School of Public Health  
 [LinkedIn](https://www.linkedin.com/in/gayathri-karthikeyan)

---

*For collaboration or questions, please connect via LinkedIn.*
