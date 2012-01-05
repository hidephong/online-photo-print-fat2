-- Pass MD5: 123456
IF EXISTS(SELECT name FROM sys.databases WHERE name = 'OODPP')
Drop Database OODPP
GO
Create Database OODPP
GO
Use OODPP
GO

Create Table AdminTbl(
AID int primary key identity(1,1),
AFullname nvarchar(100),
AUsername nvarchar(50) not null,
APassword nvarchar(50) not null
)
GO
--------------Create Customer----------------------------------------------------------------------
-- Drop table Customer
Create table Customer
(
CusID int primary key identity(1,1),
CustUser nvarchar(15) Unique, 
Custpass nvarchar (100), 
FirstName nvarchar(50),
LastName nvarchar(50),
CustEmail nvarchar(100), 
DateOB datetime,
Gender nvarchar(10),
PhoneNO nvarchar(15),
[Address] nvarchar(max),
Status nvarchar(10)
)
go


Create Table UserTbl(
UID int primary key identity(1,1),
UFullname nvarchar(100),
UUsername nvarchar(50) not null,
UPassword nvarchar(100) not null,
UEmail nvarchar(50) not null,
UAddress nvarchar(max) not null,
UDOB datetime,
Status nvarchar(10)
)
GO
----------------------------------------------------------------------------------------------
create table Ordertbl
(
OrderID int primary key identity(1,1),
OrderName nvarchar(50),
OrderDate datetime,
CustID int foreign key references CUSTOMER(CusID),
UserID int foreign key references UserTbl(UID),
Status nvarchar(50)
)
go
--drop table OrderDetailsTbl
create table OrderDetailsTbl
(
PurchaseOrderNo int identity(1,1),
FolderName nvarchar(20),
PrintSizes nvarchar(10),
EmailID nvarchar(100),
EmailSubject nvarchar(100),
EmailText nvarchar(max),
CreditCardNo nvarchar(25),
TimeToComplex int,
Price float,
Status nvarchar(50),
OrderID int foreign key references Ordertbl(OrderID),
)
go
---------------------------------------------------------------------------------------------
-- drop table FeedBackTbl 
Create table FeedBackTbl
(
FeedBackID int identity(1,1),
FeedBackMessage nvarchar(max),
FeedBackDate datetime,
FeedBackEmail nvarchar(50),
FeedBackName nvarchar(50),
CustomerFeedID int null
)
go

Create Table Menu(
MID int primary key identity(1,1),
MName nvarchar(100) not null,
MLink nvarchar(250),
MTitle nvarchar(250),
MParent int,
MEnable bit
)
GO



Create Table News(
NID int primary key identity(1,1),
NTitle nvarchar(250),
NImg nvarchar(250),
NContent text,
NSubj nvarchar(1000),
NDate datetime,
NHot bit,
NStatus bit
)
GO

Create Table PrintSizeCost(
PSCID nvarchar(5) primary key not null,
PSCName nvarchar(50),
SizeIn nvarchar(50),
SizeCm nvarchar(50),
PSCCost float not null,
SellOffer float,
PSCNote nvarchar(200)
)
GO
--drop table CustomerImgLink
Create Table CustomerImgLink(
CILID int primary key Identity(1,1),
ImageLink nvarchar(100),
CustID int,
FOREIGN KEY (CustID) REFERENCES CUSTOMER(CusID) 
)
go


use master
go