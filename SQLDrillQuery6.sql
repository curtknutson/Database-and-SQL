USE SQLDrill;
GO

--Retrieves the name, addresses and number of books checked out for all borrowers who have more than 5 books checked out.

SELECT br.Name, br.Address, Count(bl.CardNO) 
FROM BOOK_LOANS bl
INNER JOIN LIBRARY_BRANCH lb
ON bl.BranchId = lb.BranchID
INNER JOIN BORROWER br
ON br.CardNo = bl.CardNo
GROUP BY br.Name, br.Address
HAVING COUNT(bl.CardNo)>5
;
