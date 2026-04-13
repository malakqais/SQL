--denormlization

create table orders_monthly_report(
customer_id int ,
customer_name varchar(70) not null ,
restaurant_name varchar(70) not null,
full_date DATE,
month_year AS FORMAT(full_date, 'MM-yyyy') ,
total_orders int , 
total_amount int,
PRIMARY KEY (customer_id, restaurant_name),
CONSTRAINT chk_month_year_format
CHECK 
(
        month_year LIKE '0[1-9]-%'
        OR
        month_year LIKE '1[0-2]-%'
));




--Why is this table denormalized?
--because we will use it to  for fast dashboards and because it is a reporting table

--Which columns here are redundant with other tables?
--customer_id column

--What is the main advantage of this table for reports?
--for fast dashboards and fast quiries 

--What is the main disadvantage and how should it be kept up‑to‑date (e.g., batch job, trigger, etc.)?
--no data intgrity maintananceand /memory wastege /it must be kept up-to-date using 
--batch jobs (periodic recalculation) or triggers (real-time updates),
--depending on system requirements.
