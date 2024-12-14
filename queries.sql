SELECT Animal.Name AS AnimalName, Habitat.Type AS HabitatType
FROM Animal
INNER JOIN Habitat ON Animal.HabitatID = Habitat.HabitatID;

SELECT Staff.Name AS StaffName, PreservationProject.Name AS ProjectName
FROM Staff
LEFT OUTER JOIN Staff_Project ON Staff.StaffID = Staff_Project.StaffID
LEFT OUTER JOIN PreservationProject ON Staff_Project.ProjectID = PreservationProject.ProjectID;

SELECT Staff.Name AS StaffName
FROM Staff
WHERE Staff.StaffID IN (
    SELECT StaffID
    FROM Staff_Project
    WHERE ProjectID IN (
        SELECT ProjectID
        FROM PreservationProject
        WHERE Budget > 100000
    )
);

SELECT s.Name AS StaffName, AVG(p.Budget) AS AverageBudget
FROM Staff s
JOIN (
    SELECT sp.StaffID, p.Budget
    FROM Staff_Project sp
    JOIN PreservationProject p ON sp.ProjectID = p.ProjectID
) AS p ON s.StaffID = p.StaffID
GROUP BY s.Name;

SELECT Habitat.Type AS HabitatType, AVG(Animal.Age) AS AvgAnimalAge
FROM Animal
INNER JOIN Habitat ON Animal.HabitatID = Habitat.HabitatID
GROUP BY Habitat.Type;
