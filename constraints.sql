ALTER TABLE Staff
ADD CONSTRAINT UniqueContactInfo UNIQUE (ContactInfo);
ALTER TABLE Animal
ADD CONSTRAINT CheckAnimalAge CHECK (Age >= 0);
ALTER TABLE Staff
ADD CONSTRAINT FK_Staff_Habitat FOREIGN KEY (AssignedHabitatID) REFERENCES Habitat(HabitatID);