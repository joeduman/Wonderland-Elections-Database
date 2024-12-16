USE wonderland_elections;

INSERT INTO Folks (folk_id, first_name, last_name, nickname, date_of_birth, primary_phone, secondary_phone, email, address) VALUES
(1, 'John', 'Doe', 'JD', '1990-01-01', '123-456-7890', NULL, 'john.doe@gmail.com', '456, Elm St, Catonsville, MD, 21043'),
(2, 'Jane', 'Smith', NULL, '1985-05-15', '234-567-8901', NULL, 'jane.smith@gmail.com', '123, Main St, Washington, MD, 20001'),
(3, 'Emily', 'Brown', 'Em', '1992-09-12', '345-678-9012', NULL, 'emily.brown@gmail.com', '123, Main St, Washington, MD, 20001'),
(4, 'Michael', 'Johnson', 'Mike', '1988-07-20', '456-789-0123', NULL, 'michael.johnson@gmail.com', '123, Main St, Washington, MD, 20001'),
(5, 'Sarah', 'Taylor', NULL, '1995-03-25', '567-890-1234', '678-901-2345', 'sarah.taylor@gmail.com', '123, Main St, Washington, MD, 20001'),
(6, 'David', 'Wilson', NULL, '1991-11-30', '678-901-2345', NULL, 'david.wilson@gmail.com', '456, Elm St, Catonsville, MD, 21043'),
(7, 'Linda', 'Garcia', NULL, '1990-04-17', '123-555-7890', '223-555-7890', 'linda.garcia@gmail.com', '123, Main St, Washington, MD, 20001'),
(8, 'James', 'Martinez', 'Jim', '1987-02-10', '234-666-8901', NULL, 'james.martinez@gmail.com', '987, Oak St, Cambridge, MD, 02114'),
(9, 'Barbara', 'Anderson', NULL, '1993-08-29', '345-777-9012', NULL, 'barbara.anderson@gmail.com', '123, Main St, Washington, MD, 20001'),
(10, 'Paul', 'Thomas', NULL, '1989-10-11', '456-888-0123', NULL, 'paul.thomas@gmail.com', '456, Elm St, Catonsville, MD, 21043'),
(11, 'Susan', 'Lee', 'Sue', '1994-06-03', '567-999-1234', '678-000-2345', 'susan.lee@gmail.com', '987, Oak St, Cambridge, MD, 02114'),
(12, 'Alice', 'Johnson', NULL, '2000-08-25', '678-101-2345', NULL, 'alice.johnson@gmail.com', '123, Main St, Washington, MD, 20001');


INSERT INTO Places (address, xy_coordinates, place_type) VALUES
('123, Main St, Washington, MD, 20001', '10,20', 'Residence'),
('456, Elm St, Catonsville, MD, 21043', '11,21', 'Residence'),
('789, Pine St, Crisfield, MD, 2187', '12,22', 'Voting Center'),
('987, Oak St, Cambridge, MD, 02114', '13,23', 'Residence'),
('999, Birch St, Columbia, MD, 20588', '14,24', 'Voting Center'),
('111, Cedar St, Elkridge, MD, 21075', '15,25', 'Voting Center');


INSERT INTO Voting_Center (acronym, address, op_periods) VALUES
('VC1', '789, Pine St, Crisfield, MD, 2187', '2024-11-01 08:00-18:00, 2024-11-02 08:00-18:00, 2024-11-03 08:00-18:00, 2024-11-04 08:00-18:00'),
('VC2', '999, Birch St, Columbia, MD, 20588', '2024-11-01 08:00-18:00, 2024-11-05 08:00-18:00, 2024-11-06 08:00-18:00, 2024-11-07 08:00-18:00'),
('VC3', '111, Cedar St, Elkridge, MD, 21075', '2024-11-01 08:00-18:00, 2024-11-08 08:00-18:00, 2024-11-09 08:00-18:00, 2024-11-10 08:00-18:00');

INSERT INTO Elections_Staff (staff_id, folk_id, staff_type, schedule) VALUES
(1, 1, 'Clerk', '2024-11-01,2024-11-02'),
(2, 2, 'Monitor', '2024-11-03,2024-11-04'),
(3, 3, 'Clerk', '2024-11-05,2024-11-06'),
(4, 4, 'Monitor', '2024-11-07,2024-11-08'),
(5, 5, 'Clerk', '2024-11-09,2024-11-10'),
(6, 6, 'Monitor', '2024-11-11,2024-11-12');


INSERT INTO Ballot (ballot_name, question, availability_start, availability_end, added_by) VALUES
('B1', 'Do you support Policy X?', '2024-11-01 08:00', '2025-11-10 18:00', 1),
('B2', 'Should we implement Policy Y?', '2024-11-01 08:00', '2025-11-10 18:00', 5),
('B3', 'Are you in favor of Policy Z?', '2024-11-01 08:00', '2025-11-10 18:00', 1),
('B4', 'Do you agree with Policy A?', '2024-11-01 08:00', '2025-11-10 18:00', 3);


INSERT INTO Voting_Registry (registry_id, folk_id, acronym, registration_date) VALUES
(1, 1, 'VC1', '2024-11-01'),
(2, 2, 'VC2', '2024-11-01'),
(3, 3, 'VC3', '2024-11-02'),
(4, 4, 'VC1', '2024-11-03'),
(5, 5, 'VC2', '2024-11-03'),
(6, 6, 'VC3', '2024-11-04'),
(7, 7, 'VC1', '2024-11-05'),
(8, 8, 'VC2', '2024-11-05'),
(9, 9, 'VC3', '2024-11-06'),
(10, 10, 'VC1', '2024-11-07'),
(11, 11, 'VC2', '2024-11-07'),
(12, 12, 'VC3', '2024-11-08'),
(13, 1, 'VC1', '2024-12-01'),
(14, 2, 'VC2', '2024-12-01'),
(15, 3, 'VC3', '2024-12-02'),
(16, 4, 'VC1', '2024-12-03'),
(17, 5, 'VC2', '2024-12-03'),
(18, 6, 'VC3', '2024-12-04'),
(19, 7, 'VC1', '2024-12-05'),
(20, 8, 'VC2', '2024-12-05'),
(21, 9, 'VC3', '2024-12-06'),
(22, 10, 'VC1', '2024-12-07'),
(23, 11, 'VC2', '2024-12-07'),
(24, 12, 'VC3', '2024-12-08');



INSERT INTO Casted_Vote (vote_id, registry_id, ballot_name, answer, cast_date, acronym) VALUES
(1, 1, 'B1', 'YES', '2024-11-01 09:00', 'VC1'),
(2, 2, 'B1', 'NO', '2024-11-01 09:15', 'VC2'),
(3, 3, 'B1', 'YES', '2024-11-02 10:00', 'VC3'),
(4, 4, 'B1', 'ABSTAIN', '2024-11-03 11:00', 'VC1'),
(5, 5, 'B1', 'YES', '2024-11-03 12:30', 'VC2'),
(6, 6, 'B1', 'NO', '2024-11-04 14:00', 'VC3'),
(7, 7, 'B1', 'YES', '2024-11-05 15:45', 'VC1'),
(8, 8, 'B1', 'ABSTAIN', '2024-11-05 16:15', 'VC2'),
(9, 9, 'B1', 'NO', '2024-11-06 17:00', 'VC3'),
(10, 10, 'B2', 'YES', '2024-11-07 09:30', 'VC1'),
(11, 11, 'B2', 'YES', '2024-11-07 10:45', 'VC2'),
(12, 12, 'B2', 'ABSTAIN', '2024-11-08 11:15', 'VC3'),
(13, 13, 'B2', 'NO', '2024-12-01 09:00', 'VC1'),
(14, 14, 'B2', 'YES', '2024-12-01 09:30', 'VC2'),
(15, 15, 'B2', 'YES', '2024-12-02 10:00', 'VC3'),
(16, 16, 'B2', 'ABSTAIN', '2024-12-03 11:00', 'VC1'),
(17, 17, 'B2', 'NO', '2024-12-03 12:30', 'VC2'),
(18, 18, 'B2', 'YES', '2024-12-04 14:00', 'VC3');


