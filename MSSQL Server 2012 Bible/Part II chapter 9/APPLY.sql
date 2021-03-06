USE tempdb;
CREATE TABLE TableA (ID INT)
INSERT INTO TableA(ID)
VALUES (1),(2)

CREATE TABLE TableB (ID INT)
INSERT INTO TableB(ID)
VALUES (1),(3)

SELECT * 
FROM TableA

SELECT B.ID AS Bid, A.ID AS Aid
FROM TableB AS B
CROSS APPLY
(SELECT ID FROM TableA
WHERE TableA.ID = B.ID) AS A


SELECT B.ID AS Bid, A.ID AS Aid
FROM TableB AS B
OUTER APPLY
(SELECT ID FROM TableA
WHERE TableA.ID = B.ID) AS A