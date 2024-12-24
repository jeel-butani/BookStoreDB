# Bookstore Database SQL Project

This project contains SQL scripts for creating and managing a bookstore database. It includes the following components:

1. **Database Design and Creation**
2. **Data Insertion**
3. **Querying and Analysis**
4. **Extras**

---

## File Structure

1. **BookstoreDB_Creation.sql**
   - **Purpose:** Contains scripts for creating the database and defining all tables with relationships and constraints.
   - **Includes:** Table creation statements with primary keys, foreign keys, and necessary constraints to ensure data integrity.

2. **BookstoreDB_Insertion.sql**
   - **Purpose:** Contains scripts to insert sample data into the database.
   - **Includes:** Insertion statements to populate all tables with representative sample data for testing and development.

3. **BookstoreDB_Queries.sql**
   - **Purpose:** Contains queries for basic data retrieval, aggregation, and advanced analysis.
   - **Includes:** 
     - Basic SELECT queries to fetch data.
     - Aggregation queries using functions like `COUNT`, `SUM`, and `ROUND`.
     - Joins to link data across multiple tables.
     - Subqueries for dynamic querying.
     - Advanced queries for operations like revenue analysis and filtering aggregated data.

4. **BookstoreDB_Extras.sql**
   - **Purpose:** Contains additional database optimizations like views, indexes, and stored procedures.
   - **Includes:**
     - Views for common report generation.
     - Indexes to optimize performance for search-intensive queries.
     - Stored procedures to handle reusable operations.

---

## Approach for Each Task

### 1. Basic Queries
- **Objective:** Retrieve and filter data.
- **Approach:**
  - Used `JOIN` to fetch data from related tables.
  - Applied `WHERE` conditions for filtering results.
  - Kept queries simple and easy to understand.
  
  **Example Tasks:**
  - Retrieve all books with author and category details.
  - Find books where `StockQuantity = 0`.

### 2. Aggregate Functions
- **Objective:** Summarize data with mathematical functions.
- **Approach:**
  - Utilized aggregate functions such as `SUM`, `COUNT`, and `ROUND`.
  - Grouped data by relevant columns to perform analysis.

  **Example Tasks:**
  - Calculate total revenue (`Quantity * Price`).
  - Count books available per category.

### 3. Joins
- **Objective:** Combine data from multiple tables based on relationships.
- **Approach:**
  - Used `INNER JOIN` for standard associations.
  - Applied `LEFT JOIN` for scenarios with missing data.

  **Example Task:**
  - List all orders with customer name, order date, book titles, and quantities.

### 4. Subqueries
- **Objective:** Use nested queries for dependent data.
- **Approach:**
  - Embedded `SELECT` statements to query dynamic data.
  - Used subqueries for queries with dynamic conditions.

  **Example Task:**
  - Find the most expensive book in a given category.

### 5. Advanced Queries
- **Objective:** Perform complex tasks with aggregation and operations.
- **Approach:**
  - Used `HAVING` to filter groups post-aggregation.
  - Combined calculations for operations such as revenue generation.

  **Example Tasks:**
  - Identify authors with revenue exceeding a threshold.
  - List books by their stock value in descending order.

### 6. Stored Procedures
- **Objective:** Create reusable and dynamic operations.
- **Approach:**
  - Created a stored procedure `GetBooksByAuthor` for retrieving books based on author parameters.
  - Handled `NULL` values for optional parameters to allow dynamic querying.

  **Example Usage:**
  - Retrieve books by supplying an `AuthorID` parameter.

### 7. Views
- **Objective:** Define pre-configured virtual tables for convenience.
- **Approach:**
  - Created views like `TopSellingBooks` to display frequently sold books based on aggregate sales data.

  **Example Task:**
  - Reporting view showing top-selling books.

### 8. Indexes
- **Objective:** Enhance query performance for frequently searched data.
- **Approach:**
  - Created non-clustered indexes, like on the `Title` column in the `Books` table.
  - Ensured that relevant columns were indexed for improved query performance.

  **Example Task:**
  - Optimized title-based searches.

---

## Error Handling
- Ensured all scripts were tested with sample data to prevent runtime errors.
- Handled `NULL` scenarios effectively in queries and stored procedures.
- Verified foreign key dependencies before inserting data to avoid orphaned records.

---

## Data Integrity
- Applied necessary constraints (e.g., primary keys, foreign keys) to maintain data integrity.
- Ensured all relationships between tables were properly established and enforced.

---

## Scalability
- The SQL scripts are modular, making it easy to update or extend the database as needed.
- Indexed key columns to improve query performance as data volume grows.

---

## Tools Used
- **Database Management System:** MySQL Server
- **IDE:** SQL Server Management Studio (SSMS)
- **Testing:** Data validation using sample records to verify accuracy.

---

## How to Use

1. **Setup the Database:**
   - Execute `BookstoreDB_Creation.sql` to set up the database and tables.
   
2. **Insert Sample Data:**
   - Execute `BookstoreDB_Insertion.sql` to populate tables with sample data for development.

3. **Run Queries:**
   - Execute `BookstoreDB_Queries.sql` to test and analyze the data using basic queries, aggregation, and advanced operations.

4. **Extras:**
   - Execute `BookstoreDB_Extras.sql` to create views, indexes, and stored procedures to optimize and automate database tasks.
