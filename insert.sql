INSERT INTO `PUBLISHER` (`Name`, `Address`, `Phone`) VALUES
  ('Picador', 'London, United Kingdom', '123456'),
  ('Bloomsbury', 'London, United Kingdom', '453216'),
  ('Doubleday', 'New York, United States', '9786456');

INSERT INTO `LIBRARY_BRANCH` (`BranchId`, `BranchName`, `Address`) VALUES
  ('br1', 'Sharpstown', 'Sharpstown USA'),
  ('br2', 'Central', 'Central USA'),
  ('br3', 'Morristown', 'Morristown USA');

INSERT INTO `BORROWER` (`CardNumber`, `Name`, `Address`, `Phone`) VALUES
  ('c1', 'Ron',  'Arizona', '1234567'),
  ('c2', 'Stephan',  'Texas', '6745329'),
  ('c3', 'Ian',  'California', '534261');

INSERT INTO `BOOK` (`BookID`, `Title`, `PublisherName`) VALUES
  ('b1', 'The Lost Tribe', 'Picador'),
  ('b2', 'Harry Potter', 'Bloomsbury'),
  ('b3', 'The Shining', 'Doubleday'),
  ('b4', 'The Outsider', 'Doubleday'),
  ('b5', 'Pet Sematary', 'Doubleday'),
  ('b6', 'The Stand', 'Doubleday');


INSERT INTO `BOOK_AUTHORS` (`BookID`, `AuthorName`) VALUES
  ('b1', 'Mark Lee'),
  ('b2', 'J. K. Rowling'),
  ('b3', 'Stephen King');

INSERT INTO `BOOK_COPIES` (`BookID`, `BranchID`, `NumberOfCopies`) VALUES
  ('b1', 'br1', 5),
  ('b1', 'br2', 15),
  ('b1', 'br3', 2),
  ('b3', 'br2', 10);

INSERT INTO `BOOK_LOANS` (`BookID`, `BranchId`, `CardNumber`, `DateOut`, `DueDate`) VALUES
  ('b1', 'br1', 'c1',  '2018-08-01',  '2018-08-30'),
  ('b2', 'br2', 'c1',  '2018-07-23',  '2018-08-21'),
  ('b2', 'br3', 'c1',  '2018-08-08',  '2018-09-10'),
  ('b3', 'br1', 'c1',  '2018-09-01',  '2018-09-29'),
  ('b5', 'br2', 'c1',  '2019-12-21',  '2020-01-05'),
  ('b6', 'br3', 'c1',  '2019-12-19',  '2020-01-07'),
  ('b2', 'br1', 'c2',  '2018-09-23',  '2018-10-21');