CREATE SEQUENCE account
MINVALUE 1000
MAXVALUE 9999
START WITH 1000
INCREMENT BY 1
CYCLE
CACHE 20;
  
CREATE SEQUENCE reqid
MINVALUE 1000000
MAXVALUE 9999999
START WITH 1000000
INCREMENT BY 1
CYCLE
CACHE 20;

CREATE SEQUENCE userid
MINVALUE 100000
MAXVALUE 999999
START WITH 100000
INCREMENT BY 1
CYCLE
CACHE 20;

CREATE SEQUENCE tid
MINVALUE 10000
MAXVALUE 999999
START WITH 100000
INCREMENT BY 1
CYCLE
CACHE 20;

DROP TABLE TRANSACTION;
DROP TABLE beneficiarydetails;
DROP TABLE registerib;
DROP TABLE ADMIN;
DROP TABLE customerdetails;

===============================================================================================
select * from tab;


create table customerdetails(accno number(4) primary key,emailid varchar2(100),title varchar2(5),fname varchar2(20),
mname varchar2(20),lname varchar2(20),fathername varchar2(20),mobileno number(10),aadharno varchar2(12) UNIQUE,
dob varchar2(20),raddressln1 varchar2(100),raddressln2 varchar2(100),landmark varchar2(50),state varchar2(50),
city varchar2(50),pincode number(6),praddressln1 varchar2(100),praddressln2 varchar2(100),
plandmark varchar2(50),pstate varchar2(50),pcity varchar2(50),ppincode number(6),
occtype varchar2(50), sourceincome varchar2(50),annualincome number(10));


insert into customerdetails(accno,emailid,title,fname,mname,lname,fathername,mobileno,aadharno,dob,RADDRESSLN1,RADDRESSLN2,
LANDMARK,STATE,city,PINCODE,PRADDRESSLN1,PRADDRESSLN2,PLANDMARK,PSTATE,pcity,PPINCODE,OCCTYPE,SOURCEINCOME,ANNUALINCOME) 
values(account.nextval,'sush@gmail.com','Mr','Sushant','Shireesh','Shastri','Shireesh',9833187239,685786594567,
'24/03/1998','lower','kharodi','marveroad','maharashtra','mumbai',400095,
'lower','kharodi','marveroad','maharashtra','mumbai',400095,'Graduate','Salary',350000);


insert into customerdetails(accno,emailid,title,fname,mname,lname,fathername,mobileno,aadharno,dob,RADDRESSLN1,RADDRESSLN2,
LANDMARK,STATE,city,PINCODE,PRADDRESSLN1,PRADDRESSLN2,PLANDMARK,PSTATE,pcity,PPINCODE,OCCTYPE,SOURCEINCOME,ANNUALINCOME) 
values(account.nextval,'sam@gmail.com','Mr','Sam','Shireesh','Shastri','Shireesh',9320562584,665648458430,
'25/02/1994','lower','kharodi','marveroad','maharashtra','mumbai',400095,
'lower','kharodi','marveroad','maharashtra','mumbai',400095,'Graduate','Salary',350000);

select * from customerdetails;

select * from admin;

select * from registerib;

===============================================================================================

create table admin(requestid number(7) primary key, accno references customerdetails(accno),emailid varchar2(100));

insert into admin values(reqid.nextval,      ,'sush@gmail.com');
  
insert into admin values(reqid.nextval,      ,'sam@gmail.com');
 
select * from admin;


===============================================================================================


create table registerib(
userid varchar2(25) primary key,
accno references customerdetails(accno),
loginpass varchar2(15),
transpass varchar2(15));


insert into registerib(userid,accno,loginpass,transpass) values(userid.nextval,  ,'sush24','sushh234','sush2498');

insert into registerib(userid,accno,loginpass,transpass) values(userid.nextval,  ,'sammm25','samm264','sam2594');

select * from registerib;

select * from beneficiarydetails;

select * from transaction;

===============================================================================================

create table beneficiarydetails(
beneficiaryaccno number(4), 
userid references registerib(accno),
beneficiaryname varchar2(25),
nickname varchar2(25),
primary key(beneficiaryaccno,userid));


insert into beneficiarydetails (beneficiaryaccno, userid, beneficiaryname, nickname)values( , ,'yash','yash');

insert into beneficiarydetails values( , ,'Sushant','Sush');

select * from beneficiarydetails;

select * from registerib;

===============================================================================================

create table transaction(tid number(5) primary key,
userid references registerib(userno),
beneficiaryaccno references beneficiarydetails(accno)),
balance number(10),
transactionamt number(10),
toname varchar2(25),
transactiondate varchar2(20),
transactiontime varchar2(20),
transactiontype varchar2(25),
tobankname varchar2(50),
tobankifsc varchar2(50));

insert into transaction(tid, userid, beneficiaryaccno, balance, transactionamt, toname, transactiondate, transactiontime, transactiontype, tobankname, tobankifsc)
values(10000,1000,54356,4500,1020,'sam','17/10/2019','18:33','NEFT','HDFC','HDFC5000');

insert into transaction values(10001,1001,55000,4000,1000,'sush','18/10/2019','09:33','NEFT','ICICI','ICICI5300');

select * from transaction;

select * from registerib;

==============================================================================================
//EXTRAS

create table registerib(
accno number(4) primary key,
emailid references customerdetails(emailid),
loginpass varchar2(15),
transpass varchar2(15),
userid varchar2(25));

create table customerdetails(emailid varchar2(100) primary key,title varchar2(5),fname varchar2(20),
mname varchar2(20),lname varchar2(20),fathername varchar2(20),mobileno number(10),aadharno varchar2(12),
dob varchar2(20),raddressln1 varchar2(100),raddressln2 varchar2(100),landmark varchar2(50),state varchar2(50),
city varchar2(50),pincode number(6),praddressln1 varchar2(100),praddressln2 varchar2(100),
plandmark varchar2(50),pstate varchar2(50),pcity varchar2(50),ppincode number(6),
occtype varchar2(50), sourceincome varchar2(50),annualincome number(10));

create table beneficiarydetails(
beneficiaryaccno number(4), 
accno references registerib(accno),
beneficiaryname varchar2(25),
nickname varchar2(25),
primary key(beneficiaryaccno,accno));


==========================================================================================
//complex queries

1) TO FETCH DETAILS(EG AAADHAR NUMBER FROM CUSTOMER TABLE USING EMAIL ID(MAPPING ADMIN & CUSTOMER TABLE)
select c.aadharno, a.emailid 
from customerdetails c, admin a 
where c.emailid = a.emailid and a.emailid ='sush@gmail.com';

2) TO FETCH ACCOUNT NUMBER FROM REGISTER TABLE USING EMAIL ID(MAPPING REGISTER & CUSTOMER TABLE)
select r.accno, r.emailid, c.aadharno 
from registerib r, customerdetails c 
where r.emailid = c.emailid;

3) TO FETCH DETAILS FROM TRANSACTION TABLE USING ACCNO(MAPPING REGISTER & TRANSACTION TABLE)
select t.tid, t.balance, r.loginpass 
from registerib r, transaction t 
where r.accno = t.accno;

4) TO FETCH DETAILS FROM BENEFICIARY TABLE USING ACCNO(MAPPING REGISTER & BENEFICIARY TABLE)
select b.beneficiaryaccno, r.emailid, r.loginpass 
from registerib r, beneficiarydetails b 
where r.accno = b.accno;

SELECT * FROM registerib;

DELETE FROM registerib WHERE ACCNO='1000'; 

