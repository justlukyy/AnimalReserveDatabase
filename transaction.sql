START TRANSACTION;


INSERT INTO Animal (Name, Species, Age, HabitatID)
VALUES ('Lion', 'Panthera leo', 5, 1);


INSERT INTO Staff (Name, Position, Salary)
VALUES ('John Doe', 'Zookeeper', 50000);


INSERT INTO Animal (Name, Species, Age, HabitatID)
VALUES ('Elephant', 'Loxodonta africana', 8, 999);  


ROLLBACK;
