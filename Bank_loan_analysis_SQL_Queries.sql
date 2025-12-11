CREATE TABLE financial_loan (
id INTEGER PRIMARY KEY,
address_state VARCHAR(50),
application_type VARCHAR(20),
emp_length VARCHAR(20),
emp_title VARCHAR(100),
grade CHAR(5),
home_ownership VARCHAR(20),
issue_date DATE,
last_credit_pull_date DATE,
last_payment_date DATE,
loan_status VARCHAR(30),
next_payment_date DATE,
member_id INTEGER,
purpose VARCHAR(50),
sub_grade VARCHAR(5),
term VARCHAR(20),
verification_status VARCHAR(30),
annual_income NUMERIC(12,2),
dti NUMERIC(5,4),
installment NUMERIC(10,2),
int_rate NUMERIC(6,4),
loan_amount INTEGER,
total_acc INTEGER,
total_payment NUMERIC(12,2)
);

select * from financial_loan;

-- Key Performing Indicators

-- 1. Total Loan Applications
select count(id) as Total_Loan_Applications
from financial_loan;

-- 2. Month to date Total Loan applications
select count(id) as MTD_Total_Loan_Applications
from financial_loan
where extract(month from issue_date) = 12
and extract(year from issue_date) = 2021;

-- 3. pevious month to date loan applications
select count(id) as MTD_Total_Loan_Applications
from financial_loan
where extract(month from issue_date) = 11
and extract(year from issue_date) = 2021;

-- 4. Total funded amount
select sum(loan_amount) as Total_Funded_Amount
from financial_loan;

-- 5. Month to date Total funded amount
select sum(loan_amount) as MTD_Total_Funded_Amount
from financial_loan
where extract(month from issue_date) = 12
and extract(year from issue_date) = 2021;

-- 6. Previous Month to date Total funded amount
select sum(loan_amount) as MTD_Total_Funded_Amount
from financial_loan
where extract(month from issue_date) = 11
and extract(year from issue_date) = 2021;

-- 7. Total Amount Received
select sum(total_payment) as Total_Amount_Received
from financial_loan;

-- 8. Month to date Total amount received
select sum(total_payment) as MTD_Total_Amount_Received
from financial_loan
where extract(month from issue_date) = 12
and extract(year from issue_date) = 2021;

-- 9. Previous Month to date Total amount received
select sum(total_payment) as MTD_Total_Amount_Received
from financial_loan
where extract(month from issue_date) = 11
and extract(year from issue_date) = 2021;

-- 10. Average interest rate
select round(avg(int_rate) * 100, 2) as Avg_interest_Rate
from financial_loan;

-- 11. Month to date Average interest rate
select round(avg(int_rate) * 100, 2) as Avg_interest_Rate
from financial_loan
where extract(month from issue_date) = 12
and extract(year from issue_date) = 2021;

-- 12. Previous Month to date Average interest rate
select round(avg(int_rate) * 100, 2) as Avg_interest_Rate
from financial_loan
where extract(month from issue_date) = 11
and extract(year from issue_date) = 2021;

-- 13. Debt To Income ratio
select round(avg(dti) *100, 2) as Avg_DTI
from financial_loan;

-- 14. Month to date Debt To Income ratio
select round(avg(dti) *100, 2) as Avg_DTI
from financial_loan
where extract(month from issue_date) = 12
and extract(year from issue_date) = 2021;

-- 15. Previous Month to date Debt Income Ratio
select round(avg(dti) *100, 2) as Avg_DTI
from financial_loan
where extract(month from issue_date) = 11
and extract(year from issue_date) = 2021;

-- 16. Good loan application percentage
select
	(count(case when loan_status = 'Fully Paid' or loan_status = 'Current' then id end) * 100)
	/ count(id) as Good_Loan_Percentage
from financial_loan;

-- 17. Good loan application
select count(id) as Good_Loan_Applications
from financial_loan
where loan_status = 'Fully Paid' or loan_status = 'Current';

-- 18. Good Funded Amount
select sum(loan_amount) as Good_Loan_Funded_Amount
from financial_loan
where loan_status in ('Fully Paid', 'Current');

-- 19. Good Loan Total Amount
select sum(total_payment) as Good_Loan_Recieved_Amount
from financial_loan
where loan_status in ('Fully Paid', 'Current');

-- 20. Bad Loan Applications Percentage
select
	(count(case when loan_status = 'Charged Off' then id end) * 100)
	/ count(id) as Bad_loan_percentage
from financial_loan;

-- 21. Bad loan applications
select count(id) as bad_loan_applications
from financial_loan
where loan_status = 'Charged Off';

-- 22. Bad Funded Amount
select sum(loan_amount) as Bad_loan_funded_amount
from financial_loan
where loan_status = 'Charged Off';

-- 23. Bad Loan Total Amount
select sum(total_payment) as bad_loan_recieved_amount
from financial_loan
where loan_status = 'Charged Off';

-- 24. Loan Status Summery
-- For each loan status, what is the loan count, total amount received, total funded amount,
-- average interest rate, and average DTI?
select loan_status,
	count(id) as Total_Loan_Applications,
	sum(total_payment) as Total_Recieved_Amount,
	sum(loan_amount) as Total_Funded_Amount,
	round(avg(int_rate) * 100, 2) as Interest_rate,
	round(avg(dti) * 100, 2) as DTI
from financial_loan
group by loan_status;

-- 25. Monthly Overview
-- For each month, what are the total loan applications, total funded amount,
-- and total amount received?
select extract (month from issue_date) as Month_Number,
	to_char(issue_date, 'Month') as Month_Name,
	count(id) as Total_Loan_applications,
	sum(loan_amount) as Total_Funded_Amount,
	sum(total_payment) as Total_Recieved_Amount
from financial_loan
group by Month_Number, Month_Name
order by Month_Number;

-- 26. State Overview
-- For each state, how many loan applications were received, and what are the total funded
-- and total received amounts?
select address_state,
	count(id) as Total_Loan_applications,
	sum(loan_amount) as Total_Funded_Amount,
	sum(total_payment) as Total_Recieved_Amount
from financial_loan
group by address_state
order by Count(id) desc;

-- 27. Term Overview
-- By loan term, what are the total applications, funded amount, and collected amount?
select term,
	count(id) as Total_Loan_applications,
	sum(loan_amount) as Total_Funded_Amount,
	sum(total_payment) as Total_Recieved_Amount
from financial_loan
group by term
order by term desc;

-- 28. Employee Length Overview
-- For each employee length category, how many loan applications were submitted
-- and what are the total funded and collected amounts?
select emp_length,
	count(id) as Total_Loan_applications,
	sum(loan_amount) as Total_Funded_Amount,
	sum(total_payment) as Total_Recieved_Amount
from financial_loan
group by emp_length
order by count(id) desc;

-- 29. Loan Purpose Analysis
-- For each loan purpose, what are the total applications, funded amount, and collected amount?
select purpose,
	count(id) as Total_Loan_applications,
	sum(loan_amount) as Total_Funded_Amount,
	sum(total_payment) as Total_Recieved_Amount
from financial_loan
group by purpose
order by count(id) desc;

-- 30. Home Ownership Analysis
-- How do loan applications, funded amounts, and received amounts vary across
-- home ownership categories?
select home_ownership,
	count(id) as Total_Loan_applications,
	sum(loan_amount) as Total_Funded_Amount,
	sum(total_payment) as Total_Recieved_Amount
from financial_loan
group by home_ownership
order by count(id) desc;

