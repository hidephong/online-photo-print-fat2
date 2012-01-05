Use OODPP
GO
-------------------------------------------------------------------------------------------------------------------
/*
Sql Insert
*/
Insert Into AdminTbl(AFullname,AUsername,APassword) values('Nguyen Anh Tuan','admin','e1adc3949ba59abbe56e057f2f883e')
update AdminTbl set AFullName = 'Nguyen anh tuan'
Go
insert into Customer values('trung','e1adc3949ba59abbe56e057f2f883e','trung','khoai','khoai@beomail.meo','11/01/1988','female','123456789987','ha noi','PCN')
GO
insert into Customer values('sad','e1adc3949ba59abbe56e057f2f883e','Tran','Hung','hungtv1612@gmail.com','11/11/1986','Male','123456789987','ha noi','Trum')
Go
Insert Into News(NTitle,Nimg,Ncontent,Nsubj,Ndate,NHot,NStatus) Values('Home Picture','','','Take photos of your family. We will make them become your best photos. Capturing every moment to a future you can look them in the fun.','12/12/2011',1,1)
GO
exec insertFeed 'la la la la','11/11/2011','poto@po.to','khoai'
GO
exec insertmenu 'Home','Default.aspx','',0,1
exec insertmenu 'News','News.Aspx','',0,1
exec insertmenu 'Categories','Categories.Aspx','',0,1
exec insertmenu 'Archive','Archive.Aspx','',0,1
exec insertmenu 'Forum','Forum.Aspx','',0,1
exec insertmenu 'About','About.Aspx','',0,1
exec insertmenu 'Contact','Contact.Aspx','',0,1
exec insertmenu 'Customer','#','',-1,1
exec insertmenu 'Order History','CustomerViewHistory.aspx','',8,1
exec insertmenu 'Upload','Upload.aspx','',8,1
exec insertmenu 'Person Information','CustomerManager.aspx','',8,1
exec insertmenu 'Print Photo','Choice.Aspx','',8,1
select * from menu

GO
insert into UserTbl values('khoai','beo','123456','beo@be.com','damn beo','11/11/2011','Enable')
go 
insert into Ordertbl values('Hoa don 1','12/11/2011',1,1,'')
go

insert into OrderDetailsTbl values('bta','L','beo@beo.beo','cc to beo','order detail','01646537743',3,12,'not yet',1)
go

----------------------------------------------------------------------------------------------------------------
/*
Execute Store Procedure
*/
exec CreateCustomer 'tuanna','e1adc3949ba59abbe56e057f2f883e','nguyen','tuan','math24dn@gmail.com','11/01/1984','male','123456789987','ha noi','Hap'
GO
Exec InsertNews 'EOS 7D (Body) New! Made to advance','','','18-megapixel CMOS sensor: Featuring a class-leading 18-megapixel APS-C size CMOS sensor, this EOS captures the largest volume of image data in high resolution and with exceptional detail and clarity even in low light conditions and high-speed situations. Less image noise and precise colour gradation add a lifelike feel for realistic and amazing photographs naturally. 19 cross-type AF sensor. For superior focusing accuracy on any scene or subject, the EOS 7D utilises a high-precision autofocus system with 19 cross-type f/5.6-sensitive sensors. The AI Servo AF mode obtains continuous focus on subjects, making it ideal for tracking moving subjects such as trains, animals and live performances. Fast and continuous shots.Capture every live moment. For quick and immediate photographic demands, the EOS 7D packs power from dual DIGIC 4 image processors to meet high image needs fast and smoothly. Together with a non-stop 8 fps continuous shooting speed, you’ll be assured of highest quality images with the quickest response.','12/12/2011',1,1
GO
exec CustFeed 'Not good','11/11/2011','nana',1
go
exec EditEmpby 'beos','lala@la.com','Ha Noi','12/12/2012','beo'
go
Exec addCost '3R','L','3½" × 5"','9 × 13 cm',0.1,''
Exec addCost '4R','KG','4" × 6"','10 × 15 cm',0.15,''
Exec addCost '5R','2L','5" x 7"','12.7 × 17.8 cm',0.99,''
Exec addCost 'Wallet (4)','8P','6" × 8"','15.2 × 20.3 cm',1.52,''
Exec addCost '8R','6P','8" × 10"','20.3 × 25.4 cm',3.31,''
Exec addCost '11R','','11" x 14"','27.9 × 35.6 cm',6.79,''
Exec addCost '16R','','16" x 20"','',15.29,''
Exec addCost '20R','','20" x 30"','',19.54,''

GO
----------------------------------------------------------------------------------------------------------------
/*
Select Table
*/
select * from Customer 
GO
select * from UserTbl
GO
select * from AdminTbl
GO
select * from FeedBackTbl
go
select * from CustomerImgLink
GO
select * from Ordertbl
go
select * from OrderDetailsTbl
go


use master
go