USE wonderland_elections;

CREATE TABLE Folks (
    folk_id INT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    nickname VARCHAR(50),
    date_of_birth DATE NOT NULL,
    primary_phone VARCHAR(15) NOT NULL,
    secondary_phone VARCHAR(15),
    email VARCHAR(100) NOT NULL,
	address VARCHAR(100) NOT NULL
);

CREATE TABLE Places (
    address VARCHAR(100),
    xy_coordinates VARCHAR(50),
    place_type ENUM('Residence', 'Voting Center') NOT NULL,
    PRIMARY KEY (address, xy_coordinates)
);

CREATE TABLE Voting_Center (
    acronym VARCHAR(4) PRIMARY KEY,
    address VARCHAR(100),
    op_periods TEXT,
    FOREIGN KEY (address) REFERENCES Places(address)
);

CREATE TABLE Elections_Staff (
    staff_id INT PRIMARY KEY,
    folk_id INT,
    staff_type ENUM('Clerk', 'Monitor') NOT NULL,
    schedule TEXT,
    FOREIGN KEY (folk_id) REFERENCES Folks(folk_id)
);

CREATE TABLE Voting_Registry (
    registry_id INT PRIMARY KEY,
    folk_id INT,
    acronym VARCHAR(4),
    registration_date DATE,
    FOREIGN KEY (folk_id) REFERENCES Folks(folk_id),
    FOREIGN KEY (acronym) REFERENCES Voting_Center(acronym)
);

CREATE TABLE Ballot (
    ballot_name VARCHAR(4) PRIMARY KEY,
    question TEXT NOT NULL,
    availability_start TIMESTAMP,
    availability_end TIMESTAMP,
	added_by INT,
	FOREIGN KEY (added_by) REFERENCES Elections_Staff(staff_id)
);

CREATE TABLE Casted_Vote (
    vote_id INT PRIMARY KEY AUTO_INCREMENT,
    registry_id INT,
    ballot_name VARCHAR(4),
    answer ENUM('YES', 'NO', 'ABSTAIN', 'NULL') NOT NULL,
    cast_date TIMESTAMP,
    acronym VARCHAR(4),
    FOREIGN KEY (registry_id) REFERENCES Voting_Registry(registry_id),
    FOREIGN KEY (ballot_name) REFERENCES Ballot(ballot_name),
    FOREIGN KEY (acronym) REFERENCES Voting_Center(acronym),
    CONSTRAINT valid_answer CHECK (answer IN ('YES', 'NO', 'ABSTAIN', 'NULL'))
);
