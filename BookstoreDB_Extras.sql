-- Stored Procedure
-- Stored Procedure: GetBooksByAuthor

CREATE PROCEDURE GetBooksByAuthor
    @AuthorID INT
AS
BEGIN
    SELECT 
        b.BookID, b.Title, b.Price, b.StockQuantity
    FROM 
        Books b
    WHERE 
        b.AuthorID = @AuthorID;
END;

-- execute 
EXEC GetBooksByAuthor @AuthorID = 2;


-- Views
-- Create a view TopSellingBooks that lists the top 5 books based on total quantity sold

CREATE VIEW TopSellingBooks AS
SELECT 
    b.BookID, b.Title, SUM(od.Quantity) AS TotalQuantitySold
FROM 
    Books b
JOIN 
    OrderDetails od ON b.BookID = od.BookID
GROUP BY 
    b.BookID, b.Title
ORDER BY 
    TotalQuantitySold DESC
OFFSET 0 ROWS FETCH NEXT 5 ROWS ONLY; 

-- See the content of the TopSellingBooks
SELECT * FROM TopSellingBooks;

-- Indexes
-- Create an index on the Books table for the Title column

CREATE NONCLUSTERED INDEX IDX_Books_Title
ON Books (Title);