DELIMITER //

CREATE PROCEDURE UpdateHealthStatus(IN animalID INT, IN newHealthStatus VARCHAR(50))
BEGIN
    -- Update the HealthStatus in the Animal table
    UPDATE Animal
    SET HealthStatus = newHealthStatus
    WHERE AnimalID = animalID;

    -- If the new HealthStatus is 'Dead', log the change in the HealthStatusLogs table
    IF newHealthStatus = 'Dead' THEN
        INSERT INTO HealthStatusLogs (AnimalID, HealthStatus)
        VALUES (animalID, newHealthStatus);
    END IF;
END //

DELIMITER ;