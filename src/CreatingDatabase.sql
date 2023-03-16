CREATE DATABASE airport;

CREATE TABLE plane_info (
   plane_ID INT NOT NULL PRIMARY KEY,
   model VARCHAR(25) NOT NULL,
   serial_number VARCHAR(15) NOT NULL,
   seats INT NOT NULL
);

CREATE TABLE pilot_info (
   pilot_ID INT NOT NULL PRIMARY KEY,
   name VARCHAR(25) NOT NULL,
   age INT NOT NULL,
   birthday DATE NOT NULL, -- optional field ( added to checking how working date data types )
   plane_that_can_fly VARCHAR(200) NOT NULL
);

CREATE TABLE flight_info ( -- child table
   flight_ID VARCHAR(25) NOT NULL PRIMARY KEY,
   plane_ID INT FOREIGN KEY REFERENCES plane_info(plane_ID)
   first_pilot INT FOREIGN KEY REFERENCES pilot_info(pilot_ID),
   second_pilot INT FOREIGN KEY REFERENCES pilot_info(pilot_ID)
);

INSERT INTO plane_info (planeID, serial_number, model, seats)
VALUES (1, 'An-148', 'pp758899_dd', 85),
       (2, 'An-158', 'kk765439_dd', 100),
       (3, 'An-158', 'kk787542_dd', 100),
       (4, 'An-148', 'pp897865_dd', 85),
       (5, 'An-148', 'pp987789_dd', 85),
       (6, 'An-148', 'pp127647_dd', 85),
       (7, 'An-148', 'pp948577_dd', 85);

INSERT INTO pilot_info (pilot_ID, name, age, birthday, plane_that_can_fly)
VALUES (1, 'Mykola', 26, 1997-01-22, 'An-158'),
       (2, 'Artem', 27, 1996-02-09, 'An-148, An-158')
       (3, 'Borys', 30, 1993-05-21, 'An-148, An-158')
       (4, 'Olga', 25, 1998-05-22, 'An-148')
       (5, 'Stepan', 31, 1992-09-11, 'An-148')
       (6, 'Maryna', 31, 1992-07-05, 'An-148')
       (7, 'Petro', 29, 1994-05-27, 'An-148')