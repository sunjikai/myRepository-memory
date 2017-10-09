CREATE DATABASE blog;
CREATE TABLE tree (
	ID INT (10) PRIMARY KEY NOT NULL auto_increment,
	NAME VARCHAR (30),
	PID VARCHAR (30),
	URL VARCHAR (30)
);

CREATE TABLE users (
	ID INT (10) PRIMARY KEY NOT NULL auto_increment,
	NAME VARCHAR (30),
	USERS VARCHAR (30),
	PASSWORD VARCHAR (30)
);

CREATE TABLE memory (
	ID INT (10) PRIMARY KEY NOT NULL auto_increment,
	NAME VARCHAR (10),
	ADRESS VARCHAR (10),
	COVER_ONE VARCHAR (50),
	P_ALL VARCHAR (50),
	DESCPTION VARCHAR (20),
	SPARE VARCHAR (10)
);

CREATE TABLE detailedbbymemory(
	ID INT (10) PRIMARY KEY NOT NULL auto_increment,
	MID INT(10),
	ATTACHEMENT BLOB,
	DETAILS TEXT,
	CONSTRAINT fk_memory FOREIGN KEY(MID) REFERENCES MEMORY(ID)
);