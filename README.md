# SQL-library-project
# Library Management System (SQL Project)

A relational database project for a **Library Management System**, built using **MySQL**. This project demonstrates database design, implementation of constraints, data manipulation, and advanced analytical querying.

---

## Project Structure

The repository is organized into three core script files:

1. **`library tables.sql`**
   * **Database Schema:** Creates tables for branches, employees, books, members, issued status, and return status.
   * **Constraints:** Defines Primary Keys (PK) and Foreign Keys (FK) to maintain relational integrity across entities.
2. **`insert library.sql`**
   * **Data Population:** Inserts initial mock records into all tables (books inventory, staff members, branch locations, and transaction logs).
3. **`library work.sql`**
   * **Business Logic & Tasks:** Contains practical queries, data updates, deletions, aggregations (`GROUP BY`, `HAVING`), multi-table joins, and table creation via `CTAS` (Create Table As Select).

---

## Database Schema & Relationships

* **`branch`**: Manages library branch locations and contact details.
* **`employees`**: Stores staff information, positions, salaries, and branch associations.
* **`books`**: Catalog of books including ISBN, title, category, rental price, and availability status.
* **`members`**: Library patrons and their registration dates.
* **`issued_status`**: Tracks book lending transactions linking members, books, and employees.
* **`return_status`**: Tracks book returns corresponding to issued records.

---

##  Key SQL Features Demonstrated

* **Relational Integrity:** Complex foreign key constraints linking transactions to members, books, and staff.
* **Aggregations & Filtering:** Using `COUNT()`, `SUM()`, `GROUP BY`, and `HAVING` to analyze rental income and borrowing frequency.
* **Advanced Joins:** Multi-table `INNER JOIN` and `LEFT JOIN` operations to track unreturned books and employee-manager hierarchies.
* **Data Definition & Modification:** Using `CREATE TABLE AS SELECT (CTAS)` for summary reports, alongside standard `INSERT`, `UPDATE`, and `DELETE` operations.

---

## How to Run

1. Clone or download the repository.
2. Run **`library tables.sql`** first to set up the database structure and relationships.
3. Run **`insert library.sql`** to populate the tables with sample data.
4. Execute queries from **`library work.sql`** to test analytical operations and operational tasks.
