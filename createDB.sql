CREATE DATABASE AnimalPreserve;

USE AnimalPreserve;

CREATE TABLE Animal (
    AnimalID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Species VARCHAR(100) NOT NULL,
    Age INT NOT NULL,
    Gender ENUM('Male', 'Female') NOT NULL,
    HealthStatus VARCHAR(100),
    Diet VARCHAR(100),
    HabitatID INT,
    FOREIGN KEY (HabitatID) REFERENCES Habitat(HabitatID)
);
CREATE TABLE Habitat (
    HabitatID INT AUTO_INCREMENT PRIMARY KEY,
    Type VARCHAR(100) NOT NULL,
    Climate VARCHAR(100) NOT NULL,
    Size FLOAT NOT NULL,
    MaintenanceSchedule VARCHAR(255)
);
CREATE TABLE Staff (
    StaffID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Role VARCHAR(100) NOT NULL,
    ContactInfo VARCHAR(255),
    AssignedHabitatID INT,
    FOREIGN KEY (AssignedHabitatID) REFERENCES Habitat(HabitatID)
);
CREATE TABLE PreservationProject (
    ProjectID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Goal VARCHAR(255) NOT NULL,
    StartDate DATE NOT NULL,
    EndDate DATE,
    Budget FLOAT NOT NULL
);
CREATE TABLE Animal_Project (
    AnimalID INT,
    ProjectID INT,
    PRIMARY KEY (AnimalID, ProjectID),
    FOREIGN KEY (AnimalID) REFERENCES Animal(AnimalID),
    FOREIGN KEY (ProjectID) REFERENCES PreservationProject(ProjectID)
);
CREATE TABLE Staff_Project (
    StaffID INT,
    ProjectID INT,
    PRIMARY KEY (StaffID, ProjectID),
    FOREIGN KEY (StaffID) REFERENCES Staff(StaffID),
    FOREIGN KEY (ProjectID) REFERENCES PreservationProject(ProjectID)
);