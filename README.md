# README #

Hi, the code for Base ontology development is stored here

### What is this repository for? ###

The WSN IaaS provider can develop and manage base ontology using this application.

### How do I get set up? ###

All necessary files are there for you to start using the code.
You will need a working Eclipse IDE. The OntMng folder of the repository contains all the required codes. 
OntologyRepository folder stores the newly developed ontology.

There are some Pre-requisite
1. MySql Database
2. Apache Tomcat
3. Protege 3.8 API

Steps:
1. Install Mysql database and create table, insert data using the initializeDB.sql file which resides in the workspace.
2. Although I have copied all the jar file of Protege 3.8 to the lib directory but you should check and if necessary copy jar file from ../plugins to the ..\OntMng\WebContent\WEB-INF\lib directory .
3. Edit the OntologyManager.java file by editing sourceFileName and dstFileNameDir
4. Run the Web service.

For running the Web service you will need a working Tomcat web server. 

### Who do I talk to? ###

contact: jafrinrifat@gmail.com