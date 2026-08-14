CREATE TABLE Staff
(
    StaffID INT IDENTITY(1,1) PRIMARY KEY,
    FullName VARCHAR(50) NOT NULL,
    Email VARCHAR(100) NOT NULL,
    Role VARCHAR(50) NOT NULL
);
GO

INSERT INTO Staff
    (FullName, Email, Role)
VALUES
    ('Nomsa Khumalo', 'nomsa@library.com', 'Librarian'),
    ('David Smith', 'david@library.com', 'Assistant Librarian'),
    ('Ayanda Ndlovu', 'ayanda@library.com', 'Librarian');
GO