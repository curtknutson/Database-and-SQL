USE SQLDrill;
GO

DROP PROC dbo.getCopiesOfBook
GO 

--This Procedure will return the title and  number of Stephen King Books, that a branch has when the user chooses a branch by name
--EXEC dbo.getCopiesOfBook 'Central';.

CREATE PROC dbo.getCopiesOfBook @BranchName VARCHAR(30)
AS
SELECT DISTINCT(bk.Title), bc.No_Of_Copies 
FROM BOOK bk
INNER JOIN BOOK_COPIES bc
ON bk.BookID = bc.BookId
INNER JOIN LIBRARY_BRANCH lb
ON bc.BranchId = lb.BranchID
INNER JOIN BOOK_AUTHORS ba
ON ba.BookId=bk.BookId
WHERE lb.BranchName = @BranchName AND ba.AuthorName = 'Stephen King'

GO