# Customer Personality Analysis Dataset

## Overview

The **Customer Personality Analysis dataset** provides information about customers of a retail company. The goal of this dataset is to help businesses better understand their customers by analyzing demographic characteristics, purchasing behavior, and responses to marketing campaigns.

Customer personality analysis allows companies to identify meaningful customer segments and design targeted marketing strategies. Instead of promoting products to every customer, businesses can identify the most relevant customer segments and focus their marketing efforts on those groups.

This dataset is useful for tasks such as:

* Customer segmentation
* Customer behavior analysis
* Marketing campaign evaluation
* Predictive modeling
* Clustering and unsupervised learning

---

# Problem Statement

The main objective is to **perform clustering analysis to identify different customer segments** based on demographic information, purchasing patterns, and campaign responses.

By identifying customer groups, businesses can:

* Personalize marketing strategies
* Improve campaign effectiveness
* Increase customer engagement
* Optimize product recommendations

---

# Dataset Structure

The dataset contains information about customers across four main categories:

1. **Customer Demographics**
2. **Spending Behavior**
3. **Promotion Response**
4. **Purchase Channels**

---

# Features Description

## 1. Customer Demographics

| Column         | Description                                               |
| -------------- | --------------------------------------------------------- |
| ID             | Unique identifier for each customer                       |
| Year_Birth     | Birth year of the customer                                |
| Education      | Education level                                           |
| Marital_Status | Marital status                                            |
| Income         | Yearly household income                                   |
| Kidhome        | Number of children in the household                       |
| Teenhome       | Number of teenagers in the household                      |
| Dt_Customer    | Date when the customer joined the company                 |
| Recency        | Number of days since the customer's last purchase         |
| Complain       | 1 if customer complained in the last 2 years, otherwise 0 |

---

## 2. Product Spending

| Column           | Description                                       |
| ---------------- | ------------------------------------------------- |
| MntWines         | Amount spent on wine in the last 2 years          |
| MntFruits        | Amount spent on fruits in the last 2 years        |
| MntMeatProducts  | Amount spent on meat products in the last 2 years |
| MntFishProducts  | Amount spent on fish products in the last 2 years |
| MntSweetProducts | Amount spent on sweets in the last 2 years        |
| MntGoldProds     | Amount spent on gold products in the last 2 years |

---

## 3. Promotion Response

| Column            | Description                                    |
| ----------------- | ---------------------------------------------- |
| NumDealsPurchases | Number of purchases made using discounts       |
| AcceptedCmp1      | Accepted offer in campaign 1 (1 = Yes, 0 = No) |
| AcceptedCmp2      | Accepted offer in campaign 2                   |
| AcceptedCmp3      | Accepted offer in campaign 3                   |
| AcceptedCmp4      | Accepted offer in campaign 4                   |
| AcceptedCmp5      | Accepted offer in campaign 5                   |
| Response          | Accepted offer in the last campaign            |

---

## 4. Purchase Channels

| Column              | Description                        |
| ------------------- | ---------------------------------- |
| NumWebPurchases     | Purchases made through the website |
| NumCatalogPurchases | Purchases made using catalog       |
| NumStorePurchases   | Purchases made directly in stores  |
| NumWebVisitsMonth   | Website visits in the last month   |

---

# Target / Objective

The primary goal is to **apply clustering techniques to identify distinct customer segments** based on behavioral and demographic characteristics.

Common methods include:

* K-Means Clustering
* Hierarchical Clustering
* DBSCAN
* Gaussian Mixture Models

---

# Potential Analysis Tasks

Some useful analyses that can be performed with this dataset include:

* Customer segmentation using clustering
* Identifying high-value customers
* Analyzing marketing campaign effectiveness
* Understanding product preferences
* Studying the relationship between demographics and purchasing behavior
* Customer lifetime value estimation

---

# Example Use Cases

* Personalized marketing campaigns
* Product recommendation systems
* Customer churn prediction
* Campaign response prediction
* Customer lifetime value analysis

---

# Acknowledgement

The dataset was provided by **Dr. Omar Romero-Hernandez**.

---

# Inspiration

Use this dataset to practice real-world customer analytics and build machine learning models for marketing intelligence.

Happy Learning.

