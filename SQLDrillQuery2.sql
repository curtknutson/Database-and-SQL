USE SQLDrill;
GO

SELECT DISTINCT(bk.Title), lb.BranchName, bc.No_Of_Copies
FROM BOOK bk
INNER JOIN BOOK_COPIES bc
ON bk.BookID = bc.BookId
INNER JOIN LIBRARY_BRANCH lb
ON lb.BranchID = bc.BranchId
WHERE bk.Title = 'The Lost Tribe';
GO