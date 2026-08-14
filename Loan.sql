CREATE TABLE Loan
(
    LoanID INT IDENTITY(1,1) PRIMARY KEY,

    CopyID INT NOT NULL,
    MemberID INT NOT NULL,
    StaffID INT NOT NULL,

    LoanDate DATE NOT NULL,
    DueDate DATE NOT NULL,
    ReturnDate DATE NULL,

    CONSTRAINT FK_Loan_BookCopy
        FOREIGN KEY (CopyID)
        REFERENCES BookCopy(CopyID),

    CONSTRAINT FK_Loan_Member
        FOREIGN KEY (MemberID)
        REFERENCES Member(MemberID),

    CONSTRAINT FK_Loan_Staff
        FOREIGN KEY (StaffID)
        REFERENCES Staff(StaffID),

    CONSTRAINT CK_Loan_DueDate
        CHECK (DueDate >= LoanDate)
);
GO

INSERT INTO Loan
    (CopyID, MemberID, StaffID, LoanDate, DueDate, ReturnDate)
VALUES
    (1, 1, 1, '2026-08-01', '2026-08-15', NULL),
    (3, 2, 2, '2026-08-02', '2026-08-16', NULL),
    (5, 3, 1, '2026-07-01', '2026-07-15', '2026-07-12'),
    (6, 4, 3, '2026-07-20', '2026-08-03', '2026-08-01'),
    (8, 5, 2, '2026-08-05', '2026-08-19', NULL);
GO

UPDATE BookCopy
SET Status = 'On Loan'
WHERE CopyID IN (1, 3, 8);
GO