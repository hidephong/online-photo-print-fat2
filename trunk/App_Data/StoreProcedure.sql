Use OODPP
GO
/*Store Procedure [Login] use for adminh login to web admin*/
IF EXISTS (SELECT * FROM sys.objects WHERE  name = 'Login')
DROP PROCEDURE [Login]	
GO 
CREATE PROCEDURE [Login]
	@user nvarchar(50),
	@pass nvarchar(50)
AS
	BEGIN
		SELECT AID FROM [AdminTbl] WHERE AUsername = @user AND APassword = @pass
	END	
GO
----------------------------------------------------------------------------

/*
Store Procedure insertFeed use for insert one feedback from 
Input:
@message: Content feedback
@date: Date feedback
@email: Email customer feeback
@name: Name of feedback
*/
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'insertFeed')
DROP PROCEDURE insertFeed	
GO 
Create Procedure insertFeed	
		@message nvarchar(max),
		@date datetime,	
		@email nvarchar (50),
		@name nvarchar(55)
as
BEgin
	insert into FeedBackTbl(FeedBackMessage,FeedBackDate,FeedBackEmail,FeedBackName) values(@message,@date,@email,@name)
end
go
----------------------------------------------------------------------------
/*
Store Procedure insertmenu use for insert menu for left menu of customer web
Input:
@MName nvarchar(100),
@MLink nvarchar(250),
@MTitle nvarchar(250),
@MParent int,
@MEnable: Status of menu. (0:disable,1:enable)
*/
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'insertmenu')
DROP PROCEDURE insertmenu		
GO
Create Procedure insertmenu	
@MName nvarchar(100),
@MLink nvarchar(250),
@MTitle nvarchar(250),
@MParent int,
@MEnable bit
as
begin
	Insert Into Menu(MName,MLink,MTitle,MParent,MEnable) Values(@MName,@MLink,@MTitle,@MParent,@MEnable)
end
go



----------------------------------------------------------------------------
/*
Store Procedure getAllmenu use for select some menu for left menu of customer web
Input:
@mStatus: Status of menu. (0:disable,1:enable)
*/
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'getAllmenu')
DROP PROCEDURE getAllmenu		
GO
Create Procedure getAllmenu	
@mStatus bit
as
begin
	select * from Menu Where MEnable=@mStatus
end
go
----------------------------------------------------------------------------
/*
Store Procedure InsertNews use for insert a news for news panel

Input:
@NTitle: Title of news
@NImg: Link to news image
@NContent: Content of news
@NSubj: Subject of news
@NDate: Date create news
@NHot: Top view status(0:Not,1:Yes)
@NEnable: Status view(0:Not,1:Yes)

Output:
*/
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'InsertNews')
DROP PROCEDURE InsertNews		
GO 
Create Procedure InsertNews	
@NTitle nvarchar(250),
@NImg nvarchar(250),
@NContent text,
@NSubj nvarchar(1000),
@NDate datetime,
@NHot bit,
@NEnable bit
as
begin
	Insert Into News(NTitle,Nimg,Ncontent,Nsubj,Ndate,NHot,NStatus) Values(@NTitle,@Nimg,@Ncontent,@Nsubj,@Ndate,@NHot,@NEnable)

end
go
----------------------------------------------------------------------------
/*
Store Procedure getHotNews use select some news for news panel in right customer web

Input:
@mStatus: Status news view(0:Not view, 1:View)

Output:

*/
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'getHotNews')
DROP PROCEDURE getHotNews		
GO
Create Procedure getHotNews	
@mStatus bit
as
begin
	select * from News Where NStatus=@mStatus
end
go
--------------------------------------------------------------------------------
/*
Store Procedure CreateCustomer use make new record Customer
Input:
@userName: Username customer
@pass: Password customer
@FName: First Name
@LName: Last Name
@CuEmail: Email customer
@Date: Birthday customer
@Gender: Gender customer
@PhoneNO: Phone number customer
@Addr: Address customer
@Status: Customer's Status
*/
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'CreateCustomer')
DROP PROCEDURE CreateCustomer		
GO
Create Procedure CreateCustomer
		@userName nvarchar(15),
		@pass nvarchar (100),
		@FName nvarchar(50),
		@LName nvarchar(50),
		@CuEmail nvarchar(100),
		@Date datetime,
		@Gender  nvarchar(10),
		@PhoneNO nvarchar(15),
		@Addr nvarchar(max),
		@Status nvarchar(10)
as
BEgin
	insert into Customer values(@userName,@pass,@FName,@LName,@CuEmail,@Date,@Gender,@PhoneNO,@Addr,@Status)
end
go
-----------------------------------------------------------------------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'CustFeed')
DROP PROCEDURE CustFeed		
GO
create procedure CustFeed
		@message nvarchar(max),
		@date datetime,	
		@title nvarchar(55),
		@cusID int
as
Begin
	insert into FeedBackTbl(FeedBackMessage,FeedBackDate,FeedBackName,CustomerFeedID) values(@message,@date,@title,@cusID)
End
go
----------------------------------------------------------------------------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'AdminViewFeed')
DROP PROCEDURE AdminViewFeed		
GO
create procedure AdminViewFeed
as
Begin
	select * from FeedBackTbl
End
go
---------------------------------------------------------------------------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'UpdateEmp')
DROP PROCEDURE UpdateEmp		
GO
-----------------------------------------------------------------------------------------------
create Procedure GetEmpByUser
	@username nvarchar(50)
as
begin
	select UFullname,UEmail,UAddress,UDOB from UserTbl where UUsername =@username
end
go
--------------------------------------------------------------------------------------------
create procedure EditEmpby	
	@fullnam nvarchar(100),
	@email nvarchar(50),
	@adress nvarchar(max),
	@date datetime,
	@username nvarchar(50)
as
begin
	UPDATE UserTbl set UFullname=@fullnam,UEmail=@email,UAddress=@adress,UDOB=@date where UUsername =@username
end
go
----------------------------------------------------------------------------------------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'GetCost')
DROP PROCEDURE GetCost		
GO
-----------------------------------------------------------------------------------------------
create Procedure GetCost
	@PSCID nvarchar(50)
as
begin
	select * from PrintSizeCost where PSCID =@PSCID
end
go

IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'GetCosts')
DROP PROCEDURE GetCosts		
GO
-----------------------------------------------------------------------------------------------
create Procedure GetCosts

as
begin
	select * from PrintSizeCost
end
go
-----------------------------------------------------------------------------------------------

IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'addCost')
DROP PROCEDURE addCost		
GO
-----------------------------------------------------------------------------------------------
create Procedure addCost
@PSCID nvarchar(5),
@PSCName nvarchar(50),
@SizeIn nvarchar(50),
@SizeCm nvarchar(50),
@PSCCost float ,
@PSCNote nvarchar(200)
as
begin
	insert into PrintSizeCost(PSCID,PSCName,SizeIn,SizeCm,PSCCost,PSCNote) values(@PSCID,@PSCName,@SizeIn,@SizeCm,@PSCCost,@PSCNote)
end
go
-----------------------------------------------------------------------------------------------


IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'addImg')
DROP PROCEDURE addImg		
GO

create Procedure addImg
@ImageLink nvarchar(200),
@CustID int
as
begin
	insert into CustomerImgLink(ImageLink,CustID) values(@ImageLink,@CustID)
end
go

-----------------------------------------------------------------------------------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'getImage')
DROP PROCEDURE getImage		
GO
create Procedure getImage
@CILID int
as
begin
	select * from CustomerImgLink where CILID =@CILID
end
go
-----------------------------------------------------------------------------------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'getPictureByCilid')
DROP PROCEDURE getPictureByCilid		
GO
create Procedure getPictureByCilid
@CustID int,
@CILID int
as
begin
	select * from CustomerImgLink where (CustID=@CustID) AND(CILID =@CILID)
end
go

-----------------------------------------------------------------------------------------------
create procedure GetOrder
as
begin
	select o.OrderID,OrderName,o.OrderDate,c.FirstName,c.LastName,c.CusID from Ordertbl o inner join Customer c on o.CustID=c.CusID
end
go
------------------------------------------------------------------------------------------------
create procedure GetOrderBy
	@orderid int
as
begin	
	select o.OrderID,o.OrderName,o.OrderDate,c.CustUser,od.PurchaseOrderNo,od.CreditCardNo,od.EmailID,od.EmailSubject,od.EmailText,od.PrintSizes,od.Status,od.TimeToComplex
	from OrderDetailsTbl od inner join Ordertbl o on od.OrderID =o.OrderID inner join Customer c on o.CustID=c.CusID 
	where od.OrderID =@orderid
end
go
-----------------------------------------------------------------------------------------------------
create procedure GetOrderByCustID
	@custID int
as
begin	
	select o.OrderID,o.OrderName,o.OrderDate,od.PurchaseOrderNo,od.CreditCardNo,od.EmailID,od.EmailSubject,od.EmailText,od.PrintSizes,od.Status,od.TimeToComplex
	from OrderDetailsTbl od inner join Ordertbl o on od.OrderID =o.OrderID inner join Customer c on o.CustID=c.CusID 
	where c.CusID = @custID order by o.OrderDate desc 
end
go
---------------------------------------------------------------------------------------------------------

IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'GetDataAdmin')
DROP PROCEDURE GetDataAdmin		
GO
-----------------------------------------------------------------------------------------------
create Procedure GetDataAdmin

as
begin
	SELECT     AdminTbl.* FROM         AdminTbl
end
go



IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'getDataAdminByID')
DROP PROCEDURE 	getDataAdminByID
GO
-----------------------------------------------------------------------------------------------
create Procedure getDataAdminByID
@AID int
as
begin
SELECT     AdminTbl.* FROM AdminTbl Where    AID=@AID	
end
go


IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'getIDByUserAndPass')
DROP PROCEDURE 	getIDByUserAndPass
GO
-----------------------------------------------------------------------------------------------
create Procedure getIDByUserAndPass
@AUser nvarchar(50),
@APass nvarchar(50)
as
begin
SELECT     AID, AFullname, AUsername, APassword
FROM         AdminTbl
WHERE     (AUsername = @AUser) AND (APassword = @APass)	
end
go

IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'addUser')
DROP PROCEDURE 	addUser
GO
-----------------------------------------------------------------------------------------------
create Procedure addUser
@UFullname nvarchar(100),
@UUsername nvarchar(50),
@UPassword nvarchar(100),
@UEmail nvarchar(50),
@UAddress nvarchar(max),
@UDOB datetime
as
begin
INSERT INTO [UserTbl] ([UFullname], [UUsername], [UPassword], [UEmail], [UAddress], [UDOB]) VALUES (@UFullname, @UUsername, @UPassword, @UEmail, @UAddress, @UDOB)	
end
go


IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'viewuser')
DROP PROCEDURE viewuser	
GO

-----------------------------------------------------------------------------------------------
create Procedure viewuser

as
begin
	SELECT     UserTbl.* FROM         UserTbl
end
go





IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'getIDbyUsername')
DROP PROCEDURE 	getIDbyUsername
GO
-----------------------------------------------------------------------------------------------
create Procedure getIDbyUsername
@username nvarchar(50)
as
begin
SELECT     UID, UUsername FROM UserTbl Where (UUsername = @username)	
end
go


IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'getUserDataByID')
DROP PROCEDURE 	getUserDataByID
GO
-----------------------------------------------------------------------------------------------
create Procedure getUserDataByID
 @id int 
as
begin
SELECT     UID, UFullname, UUsername, UPassword, UEmail, UAddress, UDOB, Status
FROM         UserTbl
WHERE     (UID = @id)	
end
go


IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'UpdateUser')
DROP PROCEDURE 	UpdateUser
GO
-----------------------------------------------------------------------------------------------
create Procedure UpdateUser
@Original_UID int,
@UFullname nvarchar(100),
@UUsername nvarchar(50),
@UPassword nvarchar(100),
@UEmail nvarchar(50),
@UAddress nvarchar(max),
@UDOB datetime,
@Status nvarchar(10)
as
begin
UPDATE    UserTbl
SET              UFullname = @UFullname, UUsername = @UUsername, UPassword = @UPassword, UEmail = @UEmail, UAddress = @UAddress, UDOB = @UDOB, 
                      Status = @Status
WHERE     (UID = @Original_UID)	
end
go

IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'DeleteUser')
DROP PROCEDURE 	DeleteUser
GO
-----------------------------------------------------------------------------------------------
create Procedure DeleteUser
@Original_UID int
as
begin
	DELETE FROM [UserTbl] WHERE (([UID] = @Original_UID))
end
go

IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'updateUserStatus')
DROP PROCEDURE 	updateUserStatus
GO
-----------------------------------------------------------------------------------------------
create Procedure updateUserStatus
@Original_UID int,
@Status nvarchar(10)
as
begin
UPDATE    UserTbl
SET              Status = @Status
WHERE     (UID = @Original_UID)	
end
go

IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'getCustomerList')
DROP PROCEDURE 	getCustomerList
GO
-----------------------------------------------------------------------------------------------
create Procedure getCustomerList

as
begin
SELECT Customer.* FROM   Customer	
end
go

IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'UpdateCustomerByAdmin')
DROP PROCEDURE 	UpdateCustomerByAdmin
GO
-----------------------------------------------------------------------------------------------
create Procedure UpdateCustomerByAdmin
@Original_CusID int,
@CustUser nvarchar(15), 
@Custpass nvarchar (100), 
@FirstName nvarchar(50),
@LastName nvarchar(50),
@CustEmail nvarchar(100), 
@DateOB datetime,
@Gender nvarchar(10),
@PhoneNO nvarchar(15),
@Address nvarchar(max),
@Status nvarchar(10)
as
begin
UPDATE [Customer] SET [CustUser] = @CustUser, [Custpass] = @Custpass, [FirstName] = @FirstName, [LastName] = @LastName, [CustEmail] = @CustEmail, [DateOB] = @DateOB, [Gender] = @Gender, [PhoneNO] = @PhoneNO, [Address] = @Address WHERE (([CusID] = @Original_CusID))	
end
go

IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'getPicture')
DROP PROCEDURE 	getPicture
GO
-----------------------------------------------------------------------------------------------
create Procedure getPicture
@CustID int
as
begin
	select * from CustomerImgLink Where CustID=@CustID
end
go
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'updateAdmin')
DROP PROCEDURE 	updateAdmin
GO
-----------------------------------------------------------------------------------------------
create Procedure updateAdmin
@Original_AID int,
@AFullname nvarchar(100),
@AUsername nvarchar(50),
@APassword nvarchar(50)
as
begin
UPDATE [AdminTbl] SET [AFullname] = @AFullname, [AUsername] = @AUsername, [APassword] = @APassword WHERE (([AID] = @Original_AID))	
end
go

IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'getCustomerByID')
DROP PROCEDURE 	getCustomerByID
GO
-----------------------------------------------------------------------------------------------
create Procedure getCustomerByID
@user  nvarchar(15)
as
begin
SELECT Customer.* FROM   Customer Where	CustUser= @user
end
go

IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'CustomerUpd')
DROP PROCEDURE 	CustomerUpd
GO
-----------------------------------------------------------------------------------------------
create Procedure CustomerUpd
@Original_CusID int,
@Pass nvarchar (100)
as
begin
	UPDATE    Customer
SET              Custpass = @Pass
WHERE     (CustUser = @Original_CusID)
end
go

IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'getnews')
DROP PROCEDURE 	getnews
GO
-----------------------------------------------------------------------------------------------
create Procedure getnews

as
begin
	select * from News
end
go
-----------------------------------------------------------------------------------------
create Procedure updatenews
@NeID int,
@NeTitle nvarchar(250),
@NeContent text,
@NeSubj nvarchar(1000),
@NeHot bit,
@NeStatus bit
as
begin
	update News set NTitle =@NeTitle ,NContent =@NeContent,NSubj =@NeSubj,NHot =@NeHot,NStatus=@NeStatus where NID=@NeID
end
go
--------------------------------


IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'Cuslogin')
DROP PROCEDURE 	Cuslogin
GO
-----------------------------------------------------------------------------------------------
create procedure Cuslogin
@usernam nvarchar(15),
@custpass nvarchar(100)
as
begin
	SELECT CusID, CustUser, Custpass FROM Customer WHERE(CustUser = @usernam) AND (Custpass = @custpass)
end
go

IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'getEmailByUsername')
DROP PROCEDURE 	getEmailByUsername
GO
-----------------------------------------------------------------------------------------------
create Procedure getEmailByUsername
@Username nvarchar (15)
as
begin
	SELECT      CusID, CustUser, Custpass, FirstName, LastName, CustEmail, DateOB, Gender, PhoneNO, Address
FROM          Customer
WHERE      (CustUser = @Username)
end
go

use master
Go

