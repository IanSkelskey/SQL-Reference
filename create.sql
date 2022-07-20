CREATE TABLE PUBLISHER (
    Name Varchar(200) PRIMARY KEY,
    Address Varchar(200),
    Phone Decimal(20)
);

CREATE TABLE BORROWER (
    CardNumber Char(4) PRIMARY KEY,
    Name Varchar(200) NOT NULL,
    Address Varchar(400),
    Phone Decimal(20)
);

CREATE TABLE LIBRARY_BRANCH (
    BranchID Char(4) PRIMARY KEY,
    BranchName Varchar(200) NOT NULL,
    Address Varchar(400)
);

CREATE TABLE BOOK (
    BookID Char(4) PRIMARY KEY,
    Title Varchar(200),
    PublisherName Varchar(200),
    FOREIGN KEY (PublisherName) REFERENCES PUBLISHER(Name)
        ON DELETE SET NULL ON UPDATE CASCADE
);

CREATE TABLE BOOK_AUTHORS (
    BookID Char(4) NOT NULL,
    AuthorName Varchar(200) NOT NULL,
    PRIMARY KEY (BookID, AuthorName),
    FOREIGN KEY (BookID) REFERENCES Book(BookID)
        ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE BOOK_COPIES (
    BookID Char(4) NOT NULL,
    BranchID Char(4) NOT NULL,
    NumberOfCopies Int DEFAULT 1,

    PRIMARY KEY (BookID, BranchID),
    FOREIGN KEY (BookID) REFERENCES Book(BookID)
        ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (BranchID) REFERENCES LIBRARY_BRANCH(BranchID)
        ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE BOOK_LOANS (
    BookID Char(4) NOT NULL,
    BranchID Char(4) NOT NULL,
    CardNumber Char(4) NOT NULL,
    DateOut Date,
    DueDate Date,

    PRIMARY KEY (BookID, BranchID, CardNumber),
    FOREIGN KEY (BookID) REFERENCES Book(BookID)
        ON DELETE RESTRICT ON UPDATE CASCADE,
    FOREIGN KEY (BranchID) REFERENCES LIBRARY_BRANCH(BranchID)
        ON DELETE RESTRICT ON UPDATE CASCADE,
    FOREIGN KEY (CardNumber) REFERENCES BORROWER(CardNumber)
        ON DELETE RESTRICT ON UPDATE CASCADE
);