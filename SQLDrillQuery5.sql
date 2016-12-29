USE SQLDrill;
GO

--For each library branch, retrieves the branch name and the total number of books loaned out from that branch


SELECT DISTINCT(lb.BranchName), COUNT(bl.BranchID)
FROM BOOK_LOANS bl
INNER JOIN LIBRARY_BRANCH lb
ON bl.BranchId = lb.BranchID
INNER JOIN BORROWER br
ON br.CardNo = bl.CardNo
INNER JOIN BOOK bk
ON bk.BookID=bl.BookId
GROUP BY lb.BranchName
