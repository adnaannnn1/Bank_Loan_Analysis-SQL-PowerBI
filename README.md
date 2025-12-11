# Bank Loan Analysis - SQL | POWER BI

## 📊 Project Overview
A comprehensive bank loan analysis project that provides data-driven insights into lending performance using interactive dashboards and SQL analytics. The system tracks key metrics, assesses portfolio quality, and identifies risk patterns to support informed decision-making.

## 📁 Dataset Information
- **Total Records**: 38,000+ loan applications
- **Features**: 24 columns
- **Key Data Categories**:
  - Loan & Borrower Identification (ID, Date, State, Purpose)
  - Financial Details (Amount, Payments, Interest Rate, DTI)
  - Loan Status (Current/Good/Bad classification)
  - Borrower Profile (Employment, Home Ownership, Loan Grade, Term)
  - Temporal Attributes (Monthly/Yearly issue dates)
  - Segmentation Fields (Purpose, State, Term, etc.)

## 🎯 Key Performance Indicators (KPIs)

| Metric | Value |
|--------|-------|
| Total Loan Applications | 38.6K |
| Total Funded Amount | $435.8M |
| Total Amount Received | $473.1M |
| Average Interest Rate | 12.0% |
| Average DTI | 13.3% |
| Good Loan Applications | 33K |
| Bad Loan Applications | 5K |
| Good Loan Funded Amount | $370.2M |
| Bad Loan Funded Amount | $65.5M |

---

## 🔍 SQL Analysis Features
The project includes comprehensive SQL queries for:

### 1. Loan Status Summary
- Applications count by status
- Total funded/received amounts
- Average interest rates and DTI by status

### 2. Monthly Overview
- Monthly trends in applications, funding, and collections
- Month-over-Month comparisons

### 3. Geographic Analysis
- State-wise loan distribution
- Regional performance insights

### 4. Borrower Segmentation
- **Term Analysis**: 36 vs 60-month loan performance
- **Employment Length**: Impact on loan applications and performance
- **Loan Purpose**: Analysis by borrowing reason (debt consolidation, home improvement, etc.)
- **Home Ownership**: Patterns across mortgage, rent, and owned properties

## 📈 Dashboard Visualization
Interactive Power BI dashboards:

### Summary Dashboard
![Dashboard-Summery](/Images/Bank_loan_report-Summery.png)
**Key Components:**
- **MTD vs MoM Comparisons:** Month-to-date and month-over-month growth metrics
- **Good vs Bad Loan Analysis:** Performance breakdown with key statistics
- **Loan Status Summary:** Detailed table with applications, amounts, and averages by status
- **Granular Metrics:** Interest rates and DTI by loan category

### Overview Dashboard
![Dashboard-Overview](/Images/Bank_loan_report-Overview.png)
**Key Components:**
- **Top Metrics Panel:** Total Loan Applications, Funded Amount, Amount Received, Average Interest Rate, Average DTI
- **Monthly Trend Analysis:** Loan applications by month visualization
- **Demographic Breakdowns:** Applications by employee length, state, loan term, purpose, and home ownership
- **Interactive Filters:** State, Grade, Good vs Bad Loan selectors for dynamic viewing

## 🛠️ Technical Implementation
- **Database**: SQL-based analysis
- **Visualization**: Power BI dashboards
- **Analysis**: Trend analysis, regional analysis, borrower profiling

## 💡 Business Impact
- **Risk Management**: Early identification of potential bad loans
- **Portfolio Optimization**: Data-driven lending decisions
- **Performance Tracking**: Monthly and regional performance monitoring
- **Customer Insights**: Understanding borrower behavior patterns
- **Operational Efficiency**: Streamlined loan approval and monitoring processes

## 📊 Key Insights from Analysis

### 🔍 Portfolio Performance & Risk
- **86.2% Good Loans** vs. 13.8% Bad Loans – healthy portfolio overall
- Higher interest rates (15.1%) correlate with **higher default risk**
- **73.2% of loans** are 60-month terms → long-term risk concentration
- Positive cash flow: Amount received ($473.1M) > Funded ($435.8M)

### 📈 Borrower Profile Analysis
- **10+ years employment**: highest application volume (8.9K)
- **<1 year employment**: higher default risk (4.6K applications)
- Renters (16K) and mortgage holders (18K) dominate applications
- **Top states**: CA, NY, TX (highest application volumes)

### 🎯 Loan Purpose & Product Analysis
- **#1 Purpose**: Debt Consolidation (majority of loans)
- **#2 Purpose**: Credit Card refinancing → opportunity for balance transfer products
- **Consistent demand**: 2.4K–2.8K monthly applications
- Interest rate average: **12.0%**, varies by loan grade (A–E)

## 💼 Business Recommendations

- **Implement Risk-Based Pricing** – Adjust interest rates based on employment stability and customer risk profiles.
- **Expand Loan Product Offerings** – Launch specialized debt consolidation and credit card refinancing products.
- **Strengthen Verification Processes** – Enhance employment and income verification to reduce defaults.
- **Focus on High-Performing Segments** – Increase marketing to reliable customer groups in top-performing states.
- **Diversify Loan Terms** – Introduce more flexible loan durations to balance risk and customer needs.
- **Enhance Early Customer Support** – Proactively assist at-risk borrowers to improve repayment rates.

## 🏁 Conclusion

The Bank Loan Analysis project provides a comprehensive, data-driven view of lending performance, enabling strategic decision-making for portfolio optimization and risk management. Through detailed SQL analysis and interactive Power BI dashboards, we identified key patterns in borrower behavior, loan performance, and portfolio health.