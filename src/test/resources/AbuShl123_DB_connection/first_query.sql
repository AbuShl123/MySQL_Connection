select *
from CUSTOMER;

select *
from ADDRESS;



select FIRST_NAME, LAST_NAME, ADDRESS_NAME
from ADDRESS inner join CUSTOMER
on ADDRESS.ADDRESS_ID = CUSTOMER.ADDRESS_ID;

select FIRST_NAME, LAST_NAME, A.ADDRESS_ID, C.ADDRESS_ID, ADDRESS_NAME, PHONE
from ADDRESS A inner join CUSTOMER C
on A.ADDRESS_ID = C.ADDRESS_ID;

/*
 left outer join / left join

 -- if will give matching part + unique for left table
 -- The order of table is important
 */

select CUSTOMER_ID, FIRST_NAME, LAST_NAME, c.ADDRESS_ID, ADDRESS_NAmE
from CUSTOMER C left outer join ADDRESS A
on C.ADDRESS_ID = A.ADDRESS_ID
order by CUSTOMER_ID desc;

select CUSTOMER_ID, FIRST_NAME, LAST_NAME, ADDRESS_NAME
from ADDRESS A left outer join CUSTOMER C
on A.ADDRESS_ID = C.ADDRESS_ID;

/*
 right outer join / right join
 -- it will give matching part + unique right table
 -- the order is important
 */

select CUSTOMER_ID, FIRST_NAME, LAST_NAME, ADDRESS_NAME
from CUSTOMER c right outer join ADDRESS a
on c.ADDRESS_ID = a.ADDRESS_ID;

select CUSTOMER_ID, FIRST_NAME, LAST_NAME, ADDRESS_NAME
from ADDRESS a right outer join CUSTOMER c
on c.ADDRESS_ID = a.ADDRESS_ID;

select *
from customer c full outer join address a
on c.ADDRESS_ID = a.ADDRESS_ID;