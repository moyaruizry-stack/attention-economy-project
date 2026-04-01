# The Attention Economy: How Doomscrolling Affects Student Productivity

## Overview

This project explores how screen habits, digital behavior, and notification patterns relate to student productivity and attention span using survey-based data.

The goal of this project is to examine whether behaviors commonly associated with **doomscrolling** — such as extended screen time, entertainment-focused device use, and frequent notification interruptions — are linked to lower self-reported productivity and shorter attention spans.

From a behavioral economics perspective, this project frames **attention as a scarce resource**, where digital distractions may create opportunity costs that interfere with focused work and task completion.

---

## Research Questions

This project investigates the following questions:

* Does higher screen time appear to relate to lower productivity?
* Does the type of screen activity appear to influence attention span?
* Do notification habits appear to affect productivity outcomes?

---

## Tools Used

This project was completed using:

* **SQLite** — data cleaning and transformation
* **Python (Pandas + Matplotlib)** — analysis and data visualization
* **Jupyter Notebook** — exploratory analysis and reporting
* **VS Code** — development environment
* **Tableau Public** — dashboard design and presentation

---

## Dataset

This project uses the following publicly available dataset:

* **Dataset:** Screen Time, Productivity and Attention Span
* **Source:** Kaggle
* **Link:** https://www.kaggle.com/datasets/muhammadalirazazaidi/screen-time-data-productivity-and-attention-span

The dataset contains survey responses related to:

* screen time habits
* device usage
* screen activity type
* attention span
* productivity
* notification handling

---

## Project Structure

```text id="5tq1od"
ATTENTION ECONOMY PROJECT/
│
├── data/
│   ├── cleaned/
│   │   └── screen_time_final.csv
│   ├── raw/
│   │   └── screen_time_survey.csv
│   └── attention_economy.db
│
├── notebooks/
│   ├── analysis.ipynb
│   └── test.ipynb
│
├── slides/
│
├── sql/
│   ├── analysis.sql
│   └── cleaning.sql
│
├── visuals/
│   ├── 1_productivity_of_screen_time.png
│   ├── 2_attention_span_vs_screen_activity.png
│   └── 3_notifications_handling_vs_productivity.png
│
├── LICENSE
├── README.md
└── requirements.txt
```

---

## Data Cleaning

The dataset was cleaned and transformed in SQLite before being exported for analysis in Python.

Cleaning steps included:

* selecting relevant variables
* trimming inconsistent text formatting
* creating a derived `screen_time_group` variable
* simplifying categorical labels for clearer analysis and visualization

Because the original dataset used **screen time ranges** rather than exact numeric values, a grouped variable was created:

* **Low** → Less than 2, 2–4
* **Moderate** → 4–6, 6–8
* **High** → 8–10, More than 10

The cleaned dataset was then exported as:

```text id="fmrqlj"
data/cleaned/screen_time_final.csv
```

---

## Analysis & Visualizations

The cleaned dataset was analyzed in Python using **Pandas** and **Matplotlib**.

Three main visualizations were created:

### 1. Productivity by Screen Time

This chart compares self-reported productivity levels across low, moderate, and high screen time groups.

**Insight:** Higher screen time groups appeared more likely to report lower productivity.

**File:**

```text id="thb4l8"
visuals/1_productivity_of_screen_time.png
```

---

### 2. Attention Span vs Screen Activity

This chart compares attention span across different types of screen activity.

**Insight:** Attention span appeared to vary depending on whether screen use was more academic/work-related or entertainment-focused.

**File:**

```text id="jlwm39"
visuals/2_attention_span_vs_screen_activity.png
```

---

### 3. Notification Handling vs Productivity

This chart compares productivity levels across different notification-handling behaviors.

**Insight:** Participants who disabled or ignored notifications appeared more likely to report stronger productivity outcomes than those who frequently interacted with notifications.

**File:**

```text id="rjri0h"
visuals/3_notifications_handling_vs_productivity.png
```

---

## Key Findings

Overall, three broad patterns emerged from the analysis:

* Higher screen time groups appeared more likely to report lower productivity
* Attention span varied across different types of screen activity
* Notification handling patterns appeared linked to productivity outcomes

These findings suggest that digital behavior may influence how effectively students allocate attention and maintain focus.

---

## Files Included

### SQL

* `sql/cleaning.sql`
* `sql/analysis.sql`

### Notebooks

* `notebooks/analysis.ipynb`
* `notebooks/test.ipynb`

### Data

* `data/raw/screen_time_survey.csv`
* `data/cleaned/screen_time_final.csv`
* `data/attention_economy.db`

### Visuals

* `visuals/1_productivity_of_screen_time.png`
* `visuals/2_attention_span_vs_screen_activity.png`
* `visuals/3_notifications_handling_vs_productivity.png`

---

## How to Reproduce This Project

### 1. Clone the repository

```bash id="8u0h7l"
git clone https://github.com/your-username/attention-economy-project.git
```

### 2. Install dependencies

```bash id="rq8huj"
pip install -r requirements.txt
```

### 3. Open the notebook

```bash id="y5s7n5"
notebooks/analysis.ipynb
```

### 4. Make sure the cleaned dataset is located at:

```text id="nrzm2w"
data/cleaned/screen_time_final.csv
```

---

## ⚠️ Pre-Publication Considerations

### 📄 License

This project is licensed under the MIT License. See the `LICENSE` file for details.

---

### 📦 Dependencies

All required Python packages are listed in `requirements.txt`.

---

### 📊 Data Source & Attribution

Notes:

* The data was not collected by the author of this project
* It is assumed the dataset publisher obtained appropriate consent
* No personally identifiable information (PII) is included
* This project is intended for educational and analytical purposes only

---

### 🔐 Ethical Considerations

* Analysis is conducted at an **aggregated level**
* No individual-level conclusions are made
* Findings should not be interpreted as causal relationships

---

### 🏫 Institutional Approval

If this project is used for academic submission or research purposes, ensure compliance with your institution’s policies regarding:

* human-related data
* public data sharing
* research ethics approval
# attention-economy-project
