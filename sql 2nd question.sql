create database cartesian;
create table CUSTOMER(
	Customer_id VARCHAR(10)
);
INSERT INTO CUSTOMER VALUES("Abinash"),("vipin"),("Mahesh"),("Bijoy"),("Bhabani"),("Ashutosh");
select * from customer;
create table voucher(
	Voucher_id varchar(10)
);
INSERT INTO voucher values("ABXFH"),("SDFGH"),("ERTYY"),("PPLKM");
select * from voucher;
with cte 
 as(select *,row_number() over(order by Customer_Id) rr from Customer)
 ,cte2 as(select *,row_number() over(order by Voucher_Id) rr from Voucher)
    
 select Customer_Id Customer_Key,Voucher_Id Gift_Voucher_Key
 from cte c1
 join cte2 c2 on c1.rr=c2.rr