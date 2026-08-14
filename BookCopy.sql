USE KhayelitshaLibraryDB
GO

CREATE TABLE BookCopy
(
    CopyID INT IDENTITY(1,1) PRIMARY KEY,
    Status VARCHAR(20) NOT NULL,
    BookID INT NOT NULL
        REFERENCES BookTitle(BookID)
);
GO


INSERT INTO BookCopy
    (Status, BookID)
VALUES
    ('Available', 1),
    ('Available', 1),
    ('Available', 2),
    ('Available', 2),
    ('Available', 3),
    ('Available', 4),
    ('Available', 4),
    ('Available', 5);
 GO