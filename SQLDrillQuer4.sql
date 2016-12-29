USE SQLDrill;
GO

--For each book that is loaned from "Sharpstown" branch and whose Due Date is today,
--retrieves the book title, borrowers name, and borrower's address.

SELECT DISTINCT(bk.Title),br.Name, br.Address
FROM BOOK_LOANS bl
INNER JOIN LIBRARY_BRANCH lb
ON bl.BranchId = lb.BranchID
INNER JOIN BORROWER br
ON br.CardNo = bl.CardNo
INNER JOIN BOOK bk
ON bk.BookID=bl.BookId
WHERE lb.BranchName = 'Sharpstown' AND CONVERT(date,bl.DueDate)=CONVERT(date,GETDATE());
GO