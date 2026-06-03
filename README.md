# 📉 Customer Churn Analysis — SpeedyCall Telecom

Exploratory data analysis of telecom customer churn using R, identifying key factors driving customer loss through bivariate visualization and customer segmentation.

---

## 📌 Project Overview

This case study analyzes the **SpeedyCall Customer Churn Dataset** to understand why customers leave a US-based telecommunications company. The study covers demographic factors, service usage, contract types, and financial patterns to identify the strongest predictors of churn.

---

## 🎯 Objectives

- Predict customer churn based on demographic data, service usage, and account information
- Analyze how churn affects revenue and total charges over time
- Evaluate the effect of specific services on customer loyalty and retention
- Segment customers based on service usage, payment method, and contract period
- Examine how long customers typically stay before churning

---

## 📊 Dataset

| Variable | Description |
|----------|-------------|
| `customerID` | Unique customer identifier |
| `gender` | Male or Female |
| `SeniorCitizen` | Senior citizen status (1 = Yes, 0 = No) |
| `Partner` | Whether customer has a partner |
| `Dependents` | Whether customer has dependents |
| `tenure` | Months the customer has stayed |
| `PhoneService` | Phone service subscription |
| `InternetService` | Internet service type (DSL, Fiber optic, None) |
| `TechSupport` | Tech support subscription |
| `Contract` | Contract term (Month-to-month, One year, Two year) |
| `PaymentMethod` | Payment method used |
| `MonthlyCharges` | Monthly charge amount |
| `TotalCharges` | Total charges to date |
| `Churn` | Whether the customer churned (Yes/No) |

> **Note:** 11 missing values were found in `TotalCharges` and removed during data cleaning.

---

## 🔬 Methods

- **Data Cleaning:** Removed missing values using `complete.cases()`
- **Bivariate Analysis:** Compound bar charts for categorical variables vs churn
- **Distribution Analysis:** Box plots for numerical variables (tenure, MonthlyCharges) vs churn
- **Customer Segmentation:** Frequency and count tables by contract, payment method, and internet service

---

## 📈 Key Findings

| Factor | Finding |
|--------|---------|
| **Contract Type** | Month-to-month customers churn the most; two-year customers are most loyal |
| **Tech Support** | Customers without tech support churn significantly more |
| **Internet Service** | Fiber optic customers show higher churn than DSL customers |
| **Monthly Charges** | Higher charges are strongly associated with churn |
| **Tenure** | Churned customers have significantly lower median tenure |
| **Demographics** | Senior citizens and customers without partners/dependents churn more |
| **Gender** | No significant difference in churn between males and females |

---

## 💡 Business Recommendations

- Incentivize customers to switch from month-to-month to long-term contracts
- Expand tech support offerings to at-risk customer segments
- Review pricing strategy for fiber optic service customers
- Target early-tenure customers with retention campaigns before they churn

---

## 🛠️ Technologies Used

![R](https://img.shields.io/badge/R-276DC3?style=for-the-badge&logo=r&logoColor=white)
![Excel](https://img.shields.io/badge/Excel-217346?style=for-the-badge&logo=microsoft-excel&logoColor=white)

**Libraries:** `ggplot2`, `dplyr`, `descr`

---

## 📁 Repository Structure

```
customer-churn-analysis/
├── case_study_1.R                        # Full R analysis script
├── SpeedyCall_Customer_Churn_Data.xlsx   # Dataset
└── README.md                             # Project documentation
```

---

*IS 3005 | Case Study 1 | H.S.S Perera — S16661*
