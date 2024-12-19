-- Create Departments Table Fields: (DepartmentID, Name, and Location)
CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    Name VARCHAR(50) NOT NULL,
    Location VARCHAR(100)
);


-- Create Doctors Table Fields:  (DoctorID, Name, Specialization, Phone)
CREATE TABLE Doctors (
    DoctorID INT PRIMARY KEY,
    Name VARCHAR(50) NOT NULL,
    Specialization VARCHAR(50),
    Phone VARCHAR(15),
    DepartmentID INT,
    FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID)
);

-- Create Patients Table Fields:(PatientID, Name, Age, Gender, Phone)
CREATE TABLE Patients (
    PatientID INT PRIMARY KEY,
    Name VARCHAR(50) NOT NULL,
    Age INT,
    Gender VARCHAR(10),
    Phone VARCHAR(15)
);

-- Create Appointments Table Fields: (AppointmentID, Date, Time, Status)
CREATE TABLE Appointments (
    AppointmentID INT PRIMARY KEY,
    Date DATE NOT NULL,
    Time TIME NOT NULL,
    Status VARCHAR(20),
    DoctorID INT,
    PatientID INT,
    FOREIGN KEY (DoctorID) REFERENCES Doctors(DoctorID),
    FOREIGN KEY (PatientID) REFERENCES Patients(PatientID)
);

-- Insert data into Departments
INSERT INTO Departments VALUES (1, 'Cardiology', 'Building A');
INSERT INTO Departments VALUES (2, 'Neurology', 'Building B');
INSERT INTO Departments VALUES (3, 'Pediatrics', 'Building C');
INSERT INTO Departments VALUES (4, 'Orthopedics', 'Building D');
INSERT INTO Departments VALUES (5, 'General Medicine', 'Building E');

-- Insert data into Doctors
INSERT INTO Doctors VALUES (1, 'Dr. Zubair', 'Cardiologist', '01922612696', 1);
INSERT INTO Doctors VALUES (2, 'Dr. Akbor', 'Neurologist', '01966612696', 2);
INSERT INTO Doctors VALUES (3, 'Dr. Mazhar', 'Pediatrician', '01977612696', 3);
INSERT INTO Doctors VALUES (4, 'Dr. Ummay Kulsum', 'Orthopedist', '01988612696', 4);
INSERT INTO Doctors VALUES (5, 'Dr. Ummay Jahan', 'General Physician', '01999612696', 5);

-- Insert data into Patients
INSERT INTO Patients VALUES (1, 'Mr. Hasibur Rahman', 35, 'Male', '01722612696');
INSERT INTO Patients VALUES (2, 'Mr. Hasan Jomadder', 28, 'Female', '01766612696');
INSERT INTO Patients VALUES (3, 'Mr. Saiful ISlam', 42, 'Male', '01777612696');
INSERT INTO Patients VALUES (4, 'Mr Shakil Ahmed', 30, 'Female', '01788612696');
INSERT INTO Patients VALUES (5, 'Mr Mazharul Islam', 50, 'Male', '01799612696');

-- Insert data into Appointments
INSERT INTO Appointments VALUES (1, '2024-12-20', '10:00:00', 'Scheduled', 1, 1);
INSERT INTO Appointments VALUES (2, '2024-12-21', '11:00:00', 'Completed', 2, 2);
INSERT INTO Appointments VALUES (3, '2024-12-22', '12:00:00', 'Scheduled', 3, 3);
INSERT INTO Appointments VALUES (4, '2024-12-23', '14:00:00', 'Scheduled', 4, 4);
INSERT INTO Appointments VALUES (5, '2024-12-24', '15:00:00', 'Cancelled', 5, 5);

