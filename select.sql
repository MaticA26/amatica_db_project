SELECT * FROM sponsors;

SELECT company_name as "Company", type_of as "Company_type" , central_base as "Head_office" FROM sponsors;

SELECT company_name as "Company", type_of as "Company_type" , central_base as "Head_office", (id*3)/2+4 as "ID" FROM sponsors;

SELECT company_name as "Company", type_of as "Company_type" , central_base as "Head_office" FROM sponsors where id >3;

select * from sponsors where company_name like ('%r%');

select sponsors.company_name as "Company", sponsors.type_of as "Company_type", sponsors.central_base as "Head_office" from sponsors;