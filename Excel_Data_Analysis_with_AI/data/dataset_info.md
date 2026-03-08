# Bank Marketing Dataset — Background

This dataset contains information from **direct marketing campaigns conducted by a Portuguese banking institution**. The marketing campaigns were conducted through **telephone calls**, where the bank contacted customers to promote a **term deposit product**.

In many cases, the bank had to contact the same customer multiple times before the customer decided whether to subscribe to the product or not.

The goal of this dataset is to **predict whether a customer will subscribe to a term deposit based on their personal profile and previous marketing interactions**. 

This dataset is commonly used in **machine learning and data analysis projects for classification problems**.

The dataset was introduced in the research paper:

**Using Data Mining for Bank Direct Marketing: An Application of the CRISP-DM Methodology**
by S. Moro, R. Laureano, and P. Cortez.

---

# Business Problem

Banks spend a lot of money contacting customers during marketing campaigns.

The key business question is:

**Which customers are more likely to subscribe to a term deposit if contacted?**

If banks can predict this correctly, they can:

* reduce marketing costs
* contact only high-probability customers
* improve campaign success rate

---

# Dataset Structure

The dataset contains:

* **Customer demographic information**
* **Financial information**
* **Previous campaign history**
* **Details of the latest marketing contact**
* **Final campaign outcome**

The target variable indicates whether the customer **subscribed to a term deposit**.

---

# Columns Explanation

## 1. Customer Demographic Information

### age

Customer's age in years.

This helps understand how different age groups respond to marketing campaigns.

---

### job

Type of job the customer has.

Examples include:

* admin
* technician
* services
* management
* retired
* blue-collar
* student
* unemployed

Occupation often influences **income stability and savings behavior**.

---

### marital

Customer's marital status.

Possible values:

* married
* single
* divorced

This variable helps analyze whether family structure influences financial decisions.

---

### education

Customer's education level.

Possible values:

* primary
* secondary
* tertiary
* unknown

Education level may influence **financial awareness and investment decisions**.

---

## 2. Financial Information

### balance

Average yearly account balance in euros.

Higher balances may indicate **higher probability of investment**.

---

### default

Whether the customer has credit in default.

Values:

* yes
* no

Customers with default history may have **lower chances of subscribing to deposits**.

---

### housing

Whether the customer has a housing loan.

Values:

* yes
* no

Customers with housing loans may have **different saving priorities**.

---

### loan

Whether the customer has a personal loan.

Values:

* yes
* no

Loan commitments might reduce willingness to invest in deposits.

---

## 3. Current Marketing Contact Information

These variables describe the **most recent call made to the customer**.

### contact

Communication type used to contact the customer.

Possible values:

* cellular
* telephone
* unknown

This helps analyze which communication method works better.

---

### day

Day of the month when the customer was contacted.

Example: 5 means 5th day of the month.

---

### month

Month when the contact occurred.

Examples:

* jan
* feb
* mar
* apr
* may
* jun
* jul
* aug
* sep
* oct
* nov
* dec

Seasonality can affect customer behavior.

---

### duration

Duration of the call in seconds.

Longer conversations often indicate **higher customer interest**.

This is one of the most important variables in this dataset.

---

## 4. Campaign History Variables

These variables describe **previous marketing interactions with the same customer**.

### campaign

Number of contacts made to the customer during the current marketing campaign.

Higher values may indicate **customer hesitation or repeated attempts by the bank**.

---

### pdays

Number of days since the customer was last contacted in a previous campaign.

Value **-1** means the customer was **never contacted before**.

---

### previous

Number of contacts made before the current campaign.

This shows the customer's past interaction history with marketing campaigns.

---

### poutcome

Outcome of the previous marketing campaign.

Possible values:

* success
* failure
* other
* unknown

If a previous campaign succeeded, the customer may be more likely to subscribe again.

---

# Target Variable

### y

Whether the customer subscribed to the term deposit.

Values:

* yes → customer subscribed
* no → customer did not subscribe

This is the **target variable for prediction**.

---

# Total Features

The dataset contains:

* **16 input variables**
* **1 output variable**

Total: **17 columns**

---
