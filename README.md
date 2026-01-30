## 📌 Overview
This project analyzes restaurant order data from a fictitious international cuisine restaurant to uncover trends in **menu item popularity, customer behavior, and high-value orders**.  
The goal: provide actionable insights for **data-driven decisions in food & beverage management**, supporting menu optimization, upselling strategies, and revenue growth.

---

## 🎯 Key Insights

### 🍔 Menu Item Popularity
The data reveals distinct preferences among customers:

- **Most popular item:** **Hamburger (American)**, ordered **622 times**, reflecting strong customer affinity for classic, familiar options.  
- **Least popular item:** **Chicken Tacos (Mexican)**, ordered **123 times**, suggesting niche menu items may benefit from **targeted promotion or bundling strategies**.  

> Interpretation: Understanding these extremes allows restaurant management to focus on **high-demand items for revenue growth** while strategically promoting lower-performing dishes to maximize overall menu effectiveness.

---

### 🗂️ Category-Level Patterns
Examining item categories highlights broader menu performance trends:

- **Top category by order volume:** American cuisine dominates orders, reinforcing **core menu strengths**.  
- **Lowest category:** Mexican cuisine, indicating potential gaps in visibility or customer awareness.  

> Interpretation: Identifying category-level preferences helps in **curating menu structure**, adjusting pricing, and designing category-specific marketing campaigns.

---

### 💰 High-Value Orders
Analysis of top spenders offers insight into **revenue drivers**:

- **Top 5 orders by total spend:**
  - Order ID 440: $192.15  
  - Order ID 2075: $191.50  
  - Order ID 1957: $190.10  
  - Order ID 330: $189.70  
  - Order ID 2675: $185.10  

> Observation: High-value orders typically combine **premium-priced items with popular staples**, showing opportunities to **upsell high-margin dishes**. These patterns can guide **bundling strategies** for maximum revenue impact.

---

## 🧩 Menu Composition & Pricing Insights
- **Method:** SQL queries on `menu_items` table to explore composition, price range, and category distribution.  
- **Findings:**  
  - Total menu items: 32, offering diverse cuisine options.  
  - Price range: $5.00 (Edamame) – $19.95 (Shrimp Scampi), balancing affordability with premium options.  
  - Category breakdown:  
    - Mexican: 9 items, avg $11.80  
    - Italian: 9 items, avg $16.80  
    - Asian: 8 items, avg $13.48  
    - American: 6 items, avg $10.07  
  - Most populated category: Italian; Least populated: American  

**Visuals:**

![Least & Most Expensive Items](visuals/least_most_expensive_items.png)  
*Comparison of the cheapest and most expensive menu items, highlighting pricing strategy and variety.*

![Dishes per Category & Average Price](visuals/dishes_per_category_avg_price.png)  
*Overview of total items and average price per category, supporting menu optimization and strategic pricing.*

> Interpretation: The menu strikes a **balance between high-demand items and premium offerings**, setting the stage for targeted promotions and strategic pricing decisions.

---

## 🧩 Order Volume & Patterns
- **Method:** SQL queries on `order_details` table to examine order frequency, item counts, and trends over time.  
- **Findings:**  
  - Dataset period: Jan 1 – Mar 31, 2023.  
  - Total unique orders: 5,370; total items ordered: 12,234.  
  - Orders with most items: up to 14 items per order.  
  - Large orders (>12 items): 23 in total.  

**Visuals:**

![Date Range of Orders](visuals/date_range_of_orders.png)  
*Snapshot of the earliest and latest orders, providing context for seasonality and demand patterns.*

![Orders with Most Items](visuals/orders_with_most_items.png)  
*Orders containing the highest number of items, highlighting bulk purchase behavior and upselling opportunities.*

> Interpretation: The average order includes 2–3 items, typical of individual customers, while **rare large orders** contribute disproportionately to revenue. Identifying these allows for **strategic promotions targeting high-value purchase behavior**.

---

## 🧩 Customer Spending Behavior & Revenue Drivers
- **Method:** SQL joins between `menu_items` and `order_details` to analyze spending patterns and composition of high-value orders.  
- **Findings:**  
  - Most & least ordered items reaffirm customer preferences (Hamburger vs Chicken Tacos).  
  - Top spenders combine **premium dishes with high-demand staples**, maximizing order value.  
  - Order ID 440 ($192.15) includes Spaghetti & Meatballs, Fettuccine Alfredo, Korean Beef Bowl, and popular staples.  
  - Top 5 orders exhibit similar patterns, indicating predictable **premium + staple combos**.  

**Visuals:**

![Top 5 Orders by Total Spend](visuals/top_5_orders_by_total_spend.png)  
*Displays the top 5 orders by total spend, highlighting high-value customer behavior.*

![Highest Spend Order Details](visuals/highest_spend_order_details.png)  
*Detailed item breakdown for the highest spend order, illustrating opportunities for strategic upselling.*

> Interpretation: Insights from top spenders reveal **multi-category combinations** that drive revenue. These can inform **menu design, pricing strategies, and promotional bundles** to maximize profitability.

---

## 🖼️ Full Visuals Gallery
For a complete set of all SQL query screenshots, including every query and result snippet, please see the [`visuals/`](visuals/) folder in this repository.  

> Each file is clearly labeled for **easy navigation and reference**, supporting fast comprehension and review.

---

## 🛠️ Skills Demonstrated
- Advanced SQL querying: joins, aggregations, GROUP BY, HAVING, subqueries  
- Data cleaning, preprocessing, and validation  
- Extracting actionable insights and telling a business story from data  
- Revenue analysis and customer behavior segmentation  
- Portfolio-ready Git & GitHub practices  

---

## 📂 Tools Used
- MySQL (Workbench)  
- Git & GitHub  
- Maven Analytics dataset  

---

## 📑 Dataset Source
Dataset Source: Maven Analytics (Training dataset)

---

## 💾 How to Access the Project
The full analysis is contained in:  
`restaurant_order_analysis.sql`  

Open in **MySQL Workbench** or any SQL editor that supports `.sql` files to explore queries, results, and insights.

---

## 🏁 Final Takeaway
This project demonstrates a **complete SQL-based analytical workflow**, from exploring raw data to generating actionable business insights.  

It highlights **menu performance, customer behavior, and high-value orders**, illustrating how SQL can be used to **drive data-driven decisions in food & beverage management** and inform strategic business actions.
