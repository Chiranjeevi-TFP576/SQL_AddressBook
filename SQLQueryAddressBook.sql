
--UC1
create database AddressBook
use AddressBook
------UC2------
----CREATING TABLE-----
CREATE TABLE ADDRESSBOOKSERVICE
(
FirstName char(25),
LastName char(25),
City char(25),
StateName char(25),
Zip int,
Phone varchar(25),
Email varchar(25)
);
 SELECT * FROM ADDRESS_BOOK_SERVICE;

 -----UC3-----
 ----INSERT CONTACT IN ADDRESSBOOK------
INSERT INTO ADDRESS_BOOK_SERVICE VALUES('Chiranjeevi','Peyyela','Visakhapatnam','AndhraPradesh','531066','7989189528','chiranjeevi@gmail.com');
INSERT INTO ADDRESS_BOOK_SERVICE VALUES('Nikitha','Bolkar','Mumbai','Maharashtra','560085','954645345','ankitakhair@gmail.com');
INSERT INTO ADDRESS_BOOK_SERVICE VALUES('Sandesh','Nikam','Pune','Maharashtra','8375','76378434534','sandesh@gmail.com');
INSERT INTO ADDRESS_BOOK_SERVICE VALUES('rahul','saner','nashik','Maharashtra','574895','09384903','snaehal@gmail.com');
INSERT INTO ADDRESS_BOOK_SERVICE VALUES('Priyanka','Ruhal','hyderabad','Telangana','455454','0938490334','priyanka@gmail.com');
SELECT * FROM ADDRESS_BOOK_SERVICE;

---UC4---------
-----Edit Existing Contact-------
update ADDRESS_BOOK_SERVICE set city ='VSP',Phone=9877161432,Email='Reventh143@gmail.com' ,StateName='Hyderabad',FirstName= 'Reventh'where LastName ='Nikam' ; 
update ADDRESS_BOOK_SERVICE set FirstName ='Suresh',LastName='Prabu',StateName='Telengana',city='Hyd',Phone=9877161432,Email='Suresh143@gmail.com' where Zip=574895;  
SELECT * FROM ADDRESS_BOOK_SERVICE;