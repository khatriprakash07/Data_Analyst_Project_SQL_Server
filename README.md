## 🎯 Purpose of This Repository

This repository serves as a Microsoft SQL Server based data analysis and reporting toolkit, focusing on:

**📊 Cohort Analysis**
**Definition**
Cohort Analysis is a data analysis technique used to group individuals (such as customers, users, or patients) who share a common characteristic or experience within a defined time frame — known as a cohort — and observe how their behavior changes over time. This method is widely used in marketing, product analytics, customer retention, and healthcare to track engagement, measure performance, and identify trends across different user groups.

**Process**
- create  view table (virtual table/temporary table) called **client_revenue**
- Used index to enhance the efficiency and speed of data retrieval in databases and other structured data formats
- **Clustered Index** which is used when a column in the table has unique (distinct) values **(Primary Key)** where as **Nonclustered Index** can include additional non-key 
  columns in a non-clustered index to avoid the need to navigate back to the base table for that data.
- create **Cohort_Analysis** table on the basis of various year by calculating total revenue and grouped by customer key and year

**Chart**
  
<img width="400" alt="Cohort_Analysis" src="https://github.com/user-attachments/assets/4967405f-c56c-46a2-bbc3-930b3cc61072" />

**Findings** 

- In 2015, since 2015 is first year that is cohort_year by itself
- In 2016, 2015 becomes cohort_year and it has contributed 25.71% of total profit (that means 25.71% of profit contributed by 2015 and rest of the profit came from new customers). This data indicates low customer retention ration then new customer rate
- In 2017, both 2015 and 2016 are cohort_year. It shows that 2017 includes profit from past customers 2016 and 2017. Customer retention is gradually increasing.

**Conclusion** 

<img width="459" alt="Table" src="https://github.com/user-attachments/assets/992c8fcf-7b95-43c2-bca3-6d34cf06b98d" />

## ##


**👥 Customer Segmentation Analysis**

Customer segmentation is crucial for organizations because it enables more targeted, efficient, and personalized business strategies.

 **Overview**
 
<img width="460" alt="seg" src="https://github.com/user-attachments/assets/5852c545-3213-4df9-a9dd-38cd90cd6844" />

**Findings:**

The chart shows that medium value client are more than high value client. The organization needs to identity behaviour, nedd and potential of medium value customer.
Analyze purchas frequency, average order value, and engagement level.

