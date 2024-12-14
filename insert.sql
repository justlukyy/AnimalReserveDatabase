INSERT INTO Habitat (Type, Climate, Size, MaintenanceSchedule)
VALUES 
    ('Savannah', 'Hot', 570, 'Monthly'),
    ('Savannah', 'Hot', 135, 'Weekly'),
    ('Forest', 'Tropical', 162, 'Monthly'),
    ('Grassland', 'Moderate', 1944, 'Weekly'),
    ('Wetlands', 'Humid', 6613 , 'Weekly');

INSERT INTO Animal (Name, Species, Age, Gender, HealthStatus, Diet, HabitatID)
VALUES
    ('Leona', 'Lion', 8, 'Female', 'Infectious', 'Carnivore', 1),
    ('Jack', 'Hyena', 5, 'Male', 'Healthy', 'Carnivore', 1),
    ('Chad', 'Cheetah', 6, 'Male', 'Injured', 'Carnivore', 1),
    ('Clever', 'Giraffe', 12, 'Male', 'Healthy', 'Herbivore', 4),
    ('Danny', 'Hippo', 10, 'Female', 'Healthy', 'Herbivore', 2);

INSERT INTO Staff (Name, Role, ContactInfo, AssignedHabitatID)
VALUES
    ('Dr. McKn Schweinsteiger', 'Veterinarian', 'schweintire@gmail.com', 1),
    ('Rudiger Rogers', 'Caretaker', 'rogerthatsir@fastmail.com', 1),
    ('Jude Bellingham', 'Habitat Specialist', 'judeybelly@realmail.com', 4),
    ('Canner Brokelyn', 'Nutritionist', 'canyoubroke@animal.com', 2),
    ('Liam Thuram', 'Caretaker', 'liam.acmilan@footwork.com', 2);

INSERT INTO PreservationProject (Name, Goal, StartDate, EndDate, Budget)
VALUES
    ('Big Cat Breeding', 'Increase population of lions and cheetahs', '2024-01-01', '2025-12-31', 150000),
    ('Herbivore Health', 'Monitor health of herbivores', '2024-03-01', '2024-12-31', 100000),
    ('Water Quality', 'Improve water quality in wetlands', '2024-06-01', '2025-01-01', 50000),
    ('Predator Safety', 'Ensure safety of predators', '2024-02-01', '2025-02-01', 200000),
    ('Habitat Expansion', 'Expand grassland habitat', '2024-07-01', '2025-06-01', 250000);

INSERT INTO Animal_Project (AnimalID, ProjectID)
VALUES
    (1, 1), 
    (2, 1),
    (3, 1), 
    (4, 2),
    (5, 2); 
    
INSERT INTO Staff_Project (StaffID, ProjectID)
VALUES
    (1, 1),
    (2, 1), 
    (3, 2), 
    (4, 2), 
    (5, 5); 