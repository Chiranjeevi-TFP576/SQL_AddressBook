
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

---UC5----
----Delete a person-----
Delete ADDRESS_BOOK_SERVICE where FirstName= 'Priyanka';
SELECT * FROM ADDRESS_BOOK_SERVICE;

------UC6------
---Reterive the data using city or State---

SELECT * FROM ADDRESS_BOOK_SERVICE where city='Visakhapatnam';
SELECT * FROM ADDRESS_BOOK_SERVICE where StateName='Telengana';

----UC7---
----Size of ADB by City or state----
select count(City) as City_count from ADDRESS_BOOK_SERVICE;
select count(StateName) as State_count from ADDRESS_BOOK_SERVICE;
SELECT * FROM ADDRESS_BOOK_SERVICE;

------UC8-----
--Sorte Alphabetically--
SELECT * FROM ADDRESS_BOOK_SERVICE order by FirstName;
SELECT * FROM ADDRESS_BOOK_SERVICE order by LastName;
SELECT * FROM ADDRESS_BOOK_SERVICE;

----UC9-Ability to identify each Address Book with name and Type----
alter table ADDRESS_BOOK_SERVICE  add AddressBook_Name varchar(30),AddressBook_Type varchar(30);
update ADDRESS_BOOK_SERVICE set AddressBook_Name = 'Family address book', AddressBook_Type = 'Family' where FirstName='Reventh';
update ADDRESS_BOOK_SERVICE set AddressBook_Name = 'Family address book', AddressBook_Type = 'Friend' where FirstName='Suresh';
