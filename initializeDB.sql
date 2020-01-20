USE ontodb;

CREATE TABLE CONCEPTS(
	concept varchar(50) NOT NULL,
	id int NOT NULL,
	parent int NOT NULL,
	grpID int NOT NULL,
	ontoID int NOT NULL
) ;


CREATE TABLE PROPERTY (
	property varchar(20) NOT NULL,
	type int NOT NULL,
	domain varchar(30) NULL,
	ranges varchar(30) NULL,
	ontoID int NOT NULL
);
CREATE TABLE SENSOR (
	name varchar(30) NOT NULL, attachedSensor varchar(100) NULL, systemSpecification varchar(100), dimensions varchar(30), ranges varchar(100), totalSensorNo varchar(100), OtherInfo varchar(100) );


CREATE TABLE ONTOLOGY (
	ontoID int NOT NULL,
	name varchar(30) NOT NULL,
	description varchar(250) NULL,
	lastUpdated varchar(25) NULL
);

Delete FROM CONCEPTS;
Delete FROM PROPERTY;
Delete FROM ONTOLOGY;
Delete from sensor;


INSERT INTO sensor(name, attachedSensor, systemSpecification, dimensions, ranges, totalSensorNo, otherInfo) VALUES ("Sun Spot","Temperature, Humidity, Light","32 bit ARM7 core - 256K RAM/2M Flash","35x25 mm", "temperature: -40~40 C", "2", "test");
INSERT INTO sensor(name, attachedSensor, systemSpecification, dimensions, ranges, totalSensorNo, otherInfo) VALUES ("XM1000","Temperature, Humidity, Light sensors","Texas Instruments®
MSP430F2618","81.90mm x 32.50mm x 6.55mm", "Temperature Range: -40 ~ 123.8 °C ", "5", "IEEE 802.15.4 2.4GHz Wireless Module");
INSERT INTO sensor(name, attachedSensor, systemSpecification, dimensions, ranges, totalSensorNo, otherInfo) VALUES ("AR1000","CO, CO2 and dust sensors","NIDS Co® GS-02A","81.90mm x 32.50mm x 6.55mm", " ", "2", "Linear output voltage");


INSERT INTO PROPERTY(property, type, domain, ranges, ontoID) VALUES ('hasUnit',1,null,null,0);
INSERT INTO PROPERTY(property, type, domain, ranges, ontoID) VALUES ('observedBy',1,null,null,0);
INSERT INTO PROPERTY(property, type, domain, ranges, ontoID) VALUES ('observes',1,null,null,0);
INSERT INTO PROPERTY(property, type, domain, ranges, ontoID) VALUES ('hasLatitude',0,null,null,0);
INSERT INTO PROPERTY(property, type, domain, ranges, ontoID) VALUES ('hasLongitude',0,null,null,0);
INSERT INTO PROPERTY(property, type, domain, ranges, ontoID) VALUES ('hasSensingTime',0,null,null,0);
INSERT INTO PROPERTY(property, type, domain, ranges, ontoID) VALUES ('hasValue',0,null,null,0);
INSERT INTO PROPERTY(property, type, domain, ranges, ontoID) VALUES ('hasSensorName',0,null,null,0);
INSERT INTO ONTOLOGY(ontoID, name, description, lastUpdated) VALUES (0,"Base Ontology","This is the base ontology","09/02/2015 02:03:56 ");

Delete FROM ONTOLOGY where name="Base Ontology";

SELECT * FROM CONCEPTS;
SELECT * FROM PROPERTY;
SELECT * FROM ONTOLOGY;
SELECT * FROM SENSOR;

SELECT * FROM concepts WHERE  concept=Temperature AND ontoID="+ ontologyID + + "' AND grpID="+ ontologyID + ")";