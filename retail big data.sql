use world;
create table Retail(
InvoiceNo int not null,
StockCode char(30) not null,
Description varchar(200) not null,
Quantity int not null,
Invoicedate varchar(30),
UnitPrice decimal(10,3) not null,	
CustomerID int not null,
Country varchar (30) not null);

select* from Retail;
set session sql_mode ='';
set global max_allowed_packet=209715200;
load data infile
'F:\Online_retailtest.csv'
into table Retail
character set latin1
fields terminated by ','
enclosed by '"'
lines terminated by '\n'
ignore 1 rows;
select * from Retail;