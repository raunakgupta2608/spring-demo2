create table customerdetails1(
accno number(4) primary key,
emailid varchar2(100),
mobileno number(10),
aadharno varchar2(12) UNIQUE
);

create table admin1(
requestid number(7) primary key, 
accno references customerdetails1(accno),
emailid varchar2(100)
);
drop table registerib1;

create table registerib1(
userid varchar2(25) primary key,
accno references customerdetails1(accno),
loginpass varchar2(15),
transpass varchar2(15)
);

drop table beneficiarydetails1;

create table beneficiarydetails1(
beneficiaryaccno number(4), 
userid references registerib1(userid),
beneficiaryname varchar2(25),
nickname varchar2(25),
primary key(beneficiaryaccno,userid)
);

drop table transaction1;

create table transaction1(
tid number(5) primary key,
refuserid varchar2(25),    
refbeneficiaryaccno number(4),
balance number(10),
transactionamt number(10),
toname varchar2(25),
transactiondate varchar2(20),
transactiontime varchar2(20),
transactiontype varchar2(25),
tobankname varchar2(50),
tobankifsc varchar2(50),
foreign key(refbeneficiaryaccno, refuserid) references beneficiarydetails1 (beneficiaryaccno,userid)
);

=====================================================================================================================

insert into customerdetails1(accno,emailid,mobileno,aadharno) 
values(account.nextval,  'sush@gmail.com',  9833187239,  685786594567);

insert into customerdetails1(accno,emailid,mobileno,aadharno) 
values(account.nextval,  'nid@gmail.com',  7458961254,  412587456325);

insert into customerdetails1(accno,emailid,mobileno,aadharno) 
values(account.nextval,  'ayush@gmail.com', 9854712589, 352147845236);

insert into admin1 (requestid, accno, emailid) values
                   (reqid.nextval, 1020 ,'sush@gmail.com');
  
insert into admin1 (requestid,    accno, emailid) values
                   (reqid.nextval, 1021 ,'nid@gmail.com');

insert into admin1 (requestid,    accno, emailid) values
                   (reqid.nextval, 1040 ,'ayush@gmail.com');

insert into registerib1(userid,         accno,loginpass,transpass)values                 
                       (userid.nextval, 1020, 'sushh234','sush2498');

insert into registerib1(userid,         accno,loginpass,transpass) values
                       (userid.nextval, 1021, 'samm264','sam2594');
                       
insert into registerib1(userid,        accno,  loginpass,transpass) values
                       (userid.nextval, 1040, 'samm264','sam2594');
                       
insert into beneficiarydetails1 (beneficiaryaccno, userid,   beneficiaryname, nickname)values
                                (1021,             100000,   'nidhi',         'nid');

insert into beneficiarydetails1 (beneficiaryaccno, userid,   beneficiaryname, nickname)values
                                (1040,             100001,   'ayush',         'ayu');
                                
insert into beneficiarydetails1 (beneficiaryaccno, userid,   beneficiaryname, nickname)values
                                (1040,             100000,   'ayush',         'ayu');
                                
create table transaction1(
tid number(5) primary key,
refuserid varchar2(25),    
refbeneficiaryaccno number(4),
balance number(10),
transactionamt number(10),
toname varchar2(25),
transactiondate varchar2(20),
transactiontime varchar2(20),
transactiontype varchar2(25),
tobankname varchar2(50),
tobankifsc varchar2(50),
foreign key(refbeneficiaryaccno, refuserid) references beneficiarydetails1 (beneficiaryaccno,userid)
);

insert into transaction1
(tid,        refuserid, refbeneficiaryaccno, balance, transactionamt, toname, transactiondate, transactiontime, transactiontype, tobankname, tobankifsc)  values
(tid.nextval,100000,    1021,                  4500,     1020,        'nidhi', '17/10/2019',    '18:33',         'NEFT',          'HDFC',    'HDFC5000');  

insert into transaction1
(tid,        refuserid, refbeneficiaryaccno, balance, transactionamt, toname, transactiondate, transactiontime, transactiontype, tobankname, tobankifsc)  values
(tid.nextval,100001,    1040,                  2000,     5410,        'ayush', '02/01/2019',    '14:43',         'NEFT',          'HDFC',    'HDFC5000');  

======================================================================================================================

select * from customerdetails1; 

select * from admin1; 

select * from registerib1;

select * from beneficiarydetails1;

select * from transaction1;


=========================================================================================================================


