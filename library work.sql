##Project task
##Task 1. Create a New Book Record -- "978-1-60129-456-2', 'To Kill a Mockingbird', 'Classic', 6.00, 'yes', 'Harper Lee', 'J.B. Lippincott & Co.')"
insert into books(isbn, book_title,category, rental_price, statuss, author, publisher)
values ('978-1-60129-456-2', 'To Kill a Mockingbird', 'Classic', 6.00, 'yes', 'Harper Lee', 'J.B. Lippincott & Co.');
select * from books;

##Task 2: Update an Existing Member's Address
select * from members;
update members
set member_address="1 Bulbul St"
where member_id='C101';

##Task 3: Delete a Record from the Issued Status Table -- Objective: Delete the record with issued_id = 'IS121' from the issued_status table.
select * from issued_status;
delete from issued_status
where issued_id = 'IS121';

##Task 4: Retrieve All Books Issued by a Specific Employee -- Objective: Select all books issued by the employee with emp_id = 'E101'
select * from issued_status
where issued_emp_id = 'E101';

##Task 5: List Members Who Have Issued More Than One Book -- Objective: Use GROUP BY to find members who have issued more than one book.
select issued_emp_id, count(issued_id) as ttl_iss 
from issued_status
group by issued_emp_id
having count(issued_id)>1;

##Task 6: Create Summary Tables: Used CTAS to generate new tables based on query results - each book and total book_issued_cnt**
create table book_counts
as
select b.isbn, count(ist.issued_id),b.book_title 
from books as b
join issued_status as ist
on ist.issued_book_isbn=b.isbn
group by 1;

##Task 7. Retrieve All Books in a Specific Category:
select * from books;
select * from books
where category='Children';

##Task 8: Find Total Rental Income by Category
select b.category, sum(rental_price), count(*) 
from books b
join issued_status ist
on b.isbn=ist.issued_book_isbn
group by 1;

##List Members Who Registered in the Last 180 Days(cuurent date=2024/08/01)
select * from members
where reg_date>= date_sub('2024-08-01', interval 180 day);

##List Employees with Their Branch Manager's Name and their branch details
select e.*,e2.emp_name as manager from branch b
join employees e
on e.branch_id=b.branch_id
join employees e2
on e2.emp_id=b.manager_id ;

##Create a Table of Books with Rental Price Above a Certain Threshold(7.00)
create table books_greater7
as
select * from books 
where rental_price>7.0;
select * from books_greater7;

##Retrieve the List of Books Not Yet Returned
select distinct(ist.issued_book_name) from issued_status ist
left join return_status r
on ist.issued_id=r.issued_id
where r.return_id is null;




