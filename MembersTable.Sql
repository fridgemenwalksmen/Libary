USE KhayelitshaLibraryDB;
GO


CREATE TABLE Member
(
    MemberID INT IDENTITY(1,1) PRIMARY KEY,
    FullName VARCHAR(50) NOT NULL,
    Address VARCHAR(50) NOT NULL,
    PhoneNumber VARCHAR(50) NOT NULL,
    JoinDate DATE NOT NULL
);

INSERT INTO Member
    (FullName, Address, PhoneNumber, JoinDate)
VALUES
    ('Thabo Mokoena', 'Khayelitsha', '0712345678', '2026-01-15'),
    ('Anele Jacobs', 'Site C', '0723456789', '2026-01-20'),
    ('Lerato Williams', 'Site B', '0734567890', '2026-02-05'),
    ('Sipho Dlamini', 'Harare', '0745678901', '2026-02-10'),
    ('Nandi Petersen', 'Makhaza', '0756789012', '2026-02-15');
GO