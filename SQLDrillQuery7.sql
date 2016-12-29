USE SQLDrill;
GO

SELECT DISTINCT(bk.Title), bc.No_Of_Copies --DISTINCT(bk.Title), lb.BranchName, bc.No_Of_Copies
FROM BOOK bk
INNER JOIN BOOK_COPIES bc
ON bk.BookID = bc.BookId
INNER JOIN LIBRARY_BRANCH lb
ON bc.BranchId = lb.BranchID
INNER JOIN BOOK_AUTHORS ba
ON ba.BookId=bk.BookId
WHERE lb.BranchName = 'Central' AND ba.AuthorName = 'Stephen King'

GO