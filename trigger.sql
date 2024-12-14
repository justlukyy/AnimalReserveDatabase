CREATE TABLE HealthStatusLogs (
    LogID INT AUTO_INCREMENT PRIMARY KEY,
    AnimalID INT,
    HealthStatus VARCHAR(100),
    UpdateTime TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

DELIMITER //

CREATE TRIGGER log_health_status_change
AFTER UPDATE ON Animal
FOR EACH ROW
BEGIN
    -- Check if the HealthStatus has been updated to 'Dead'
    IF NEW.HealthStatus = 'Dead' AND OLD.HealthStatus <> 'Dead' THEN
        INSERT INTO HealthStatusLogs (AnimalID, HealthStatus)
        VALUES (NEW.AnimalID, NEW.HealthStatus);
    END IF;
END //

DELIMITER ;