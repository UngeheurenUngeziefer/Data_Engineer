USE AdventureWorks2019;
SELECT FirstName, LastName
    FROM Person.Person
    WHERE 'Ken' IN (FirstName, LastName)