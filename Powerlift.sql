/*
Term Project - Task 3
Daniel Ruiz
April 8th,2024
COP 4703
*/

-- Table creation
Create Table Powerlift.Athlete (fName char(25), lName char(25), athleteId varchar(10) PRIMARY KEY,
team char(30), weight numeric(5,2), weightClass tinyint, total numeric(4,1),
athleteRank varchar(4)); -- All weights are assumed to be in Kilos (kg)
-- athleteRank is in the convention of '1st'

create table Powerlift.Team ( yesOrNo char(3), team char(30));

create table Powerlift.Competition ( compName char(40), city char(20), state char(20),
compDate date ,weightClass tinyint, athleteId varchar(10));

create table Powerlift.Credentials (userName varchar(25), hashedPassword varchar(12));
-- Hashed password for security purposes

create table Powerlift.Lift ( fName char(25), lName char(25), liftName char(12),
attemptWeight int, attemptNum varchar (1), hitOrMiss char(4));

-- Table population
insert into Powerlift.Athlete (fName, lName, athleteId, team, weight, weightClass, total, athleteRank)
Values ('Daniel', 'Ruiz', '12345DR', 'Fit Destiny', 120.5, 125, 627.5, '1st'),
		('Yolanda', 'Vega', '12345YV', 'Bobbert', 53.0, 53, 100.0, '4th'),
        ('Felicitas', 'Retes', '12345FR',NULL, 53.0, 53, 100.0, '5th'),
        ('Kevin','Akin', '12345KA', 'Tu Mama',93.0, 93, 300.0, '3rd' ),
        ('Angelo', 'Rodriguez', '12345AR', 'Tu Papa', 110.0, 110, 450.0,'2nd');
        
insert into Powerlift.Team (yesOrNo, team)
Values ('Yes', 'Fit Destiny'),
		('Yes', 'Bobbert'),
		('No', Null), -- No team affiliation 
		('Yes', 'Tu Mama'),
        ('Yes', 'Tu Papa');
        
insert into Powerlift.Competition (compName, city, state, compDate, weightClass, athleteId)
values ('Orlando Powerfest', 'Orlando', 'Florida', '2023-10-16', 125, '12345DR'),
		('Orlando Powerfest', 'Orlando', 'Florida', '2023-10-16', 125, '12345YV'),
        ('Orlando Powerfest', 'Orlando', 'Florida', '2023-10-16', 125, '12345FR'),
        ('Orlando Powerfest', 'Orlando', 'Florida', '2023-10-16', 125, '12345KA'),
        ('Orlando Powerfest', 'Orlando', 'Florida', '2023-10-16', 125, '12345AR');

insert into Powerlift.Credentials (userName, hashedPassword)
Values ( 'Dantheman', 'Danny0430'),
	   ('Marmalade','Bobbert69'),
	   (Null,Null ), -- No login. Fields are dependent on each other. Cannot just have one
       ('Kevinator', 'Tumama69'),
	   ( 'Lo', 'Tupapa69');
       
insert into Powerlift.Lift (fName, lName, liftName, attemptWeight, attemptNum, hitOrMiss)
Values ('Daniel', 'Ruiz', 'Squat', 250, '3', 'Pass' ),
	   ('Yolanda', 'Vega', 'Deadlift',90, '1', 'Fail' ),
       ('Felicitas', 'Retes','Bench Press', 50, '2', 'Pass'),
       ('Kevin', 'Akin','Squat', 110, '1', 'Fail' ),
       ('Angelo', 'Rodriguez','Bench Press', 120, '2', 'Pass');
       
-- extracting data
select * from Powerlift.Athlete;

select * from Powerlift.Competition;

select * from Powerlift.Credentials;

select * from Powerlift.Lift;

select * from Powerlift.Team;
    
        
        