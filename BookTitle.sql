USE KhayelitshaLibraryDB;
GO

CREATE TABLE BookTitle
(
    BookID INT IDENTITY(1,1) PRIMARY KEY,
    BookGenre VARCHAR(50) NOT NULL,
    BookTitle VARCHAR(50) NOT NULL
);

INSERT INTO BookTitle
    (BookGenre, BookTitle)
VALUES
    ('Fantasy', 'The Hobbit'),
    ('Dystopian', '1984'),
    ('Classic', 'The Great Gatsby'),
    ('Fantasy', 'Harry Potter'),
    ('Classic', 'To Kill a Mockingbird');
GO