DECLARE @WorkTable TABLE (
    PK INT PRIMARY KEY,
    Col1 INT NOT NULL);

INSERT INTO @WorkTable (PK, Col1)
VALUES (1, 101);
SELECT PK, Col1
FROM @WorkTable;