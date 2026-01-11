CREATE TABLE Flights (
    FlightID INT IDENTITY PRIMARY KEY,
    FlightDate DATE,
    AirlineCode VARCHAR(10),
    FlightNumber VARCHAR(10),
    Origin VARCHAR(5),
    Destination VARCHAR(5),
    ScheduledDepTime INT,
    ScheduledArrTime INT,
    ActualDepTime INT,
    ActualArrTime INT,
    ArrivalDelay INT,
    DepartureDelay INT,
    TailNumber VARCHAR(20)
);

CREATE TABLE GateAssignments (
    GateID INT IDENTITY PRIMARY KEY,
    AirportCode VARCHAR(5),
    GateNumber VARCHAR(10),
    FlightID INT,
    AssignedStartTime INT,
    AssignedEndTime INT,
    FOREIGN KEY (FlightID) REFERENCES Flights(FlightID)
);

CREATE TABLE AircraftRotations (
    RotationID INT IDENTITY PRIMARY KEY,
    TailNumber VARCHAR(20),
    PrevFlightID INT,
    NextFlightID INT,
    FOREIGN KEY (PrevFlightID) REFERENCES Flights(FlightID),
    FOREIGN KEY (NextFlightID) REFERENCES Flights(FlightID)
);