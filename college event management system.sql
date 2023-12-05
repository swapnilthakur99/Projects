create database college_event_management_system;
use college_event_management_system;
create table event( eventcode int primary key, name varchar(50) not null, noofmemebers int,cost numeric(10,2), location varchar(50), maxcapacity int)
insert into event values(1,"shake it up",5,100,"e block",50);
insert into event values(2,"sangeet smart",10,120,"b block",100);
insert into event values(3,"sport",20,150,"ground",130);
insert into event values(4,"VR games",30,200,"lounge",170);
insert into event values(5,"play",40,250,"hall",190);
describe event;

create table participants( partid int primary key, fn varchar(20), ln varchar(20), dob date, city varchar(20), state varchar(20),email varchar(20) not null, phoneno numeric(10,0));

insert into participants values(101,"sahil","dholam","2000-11-20","pune", "maharashtra","sd20@gmail.com",9769706351);
insert into participants values(102,"omkar","ghole","2001-10-22","satara", "maharashtra","og22@gmail.com",9856432910);
insert into participants values(103,"harsh","kode","2000-12-12","mumbai", "maharashtra","hk12@gmail.com",9074653298);
insert into participants values(104,"tejas","thakur","2000-04-30","nagpur", "maharashtra","tk30@gmail.com",8958909718);
insert into participants values(105,"roshan","baapat","2000-06-10","thane", "maharashtra","rb10@gmail.com",7849043789);
describe participants;

create table sponsors( sponsorid int primary key, fn varchar(20), ln varchar (20), city varchar (20), state varchar (20), amount int, eventcode int);

insert into sponsors values(1,"ashish","kumar","mumbai", "maharashtra",20000,1);
insert into sponsors values(2,"sachin","kapoor","pune", "maharashtra",10000,2);
insert into sponsors values(3,"rahul","thakur","noida", "delhi",30000,3);
insert into sponsors values(4,"shalaka","singh","jaipur", "rajasthan",50000,4);
insert into sponsors values(5,"abhijeet","dev","ranchi", "jharkhand",70000,5);
describe sponsors;

create table members( memberid int primary key, fn varchar(20), ln varchar(20), dob date, email varchar(20) not null, city varchar(20), state varchar(20), phoneno numeric(10,0));

insert into members values(1,"shital","patil","1999-10-30","sp1999@gmail.com","surat","gujrat",8293716143);
insert into members values(2,"rajesh","sirsat","1998-12-20","rs1998@gmail.com","bhopal","madhya pradesh",7738327940);
insert into members values(3,"salman","khan","1997-08-10","sk1997@gmail.com","chennai","tamil nadu",8286832322);
insert into members values(4,"vivek","chavan","1995-02-17","vc1995@gmail.com","pune","maharashtra",3625147391);
insert into members values(5,"bunty","kadu","1993-06-25","bk1993@gmail.com","nashik","maharashtra",3265987845);
describe members;

create table booking( bookingid int primary key, amount int, seat int, typeofbooking varchar(20), eventcode int, partid int);
insert into booking values(101,200,10,"online",1,101);
insert into booking values(102,300,30,"online",2,201);
insert into booking values(103,150,40,"offline",3,301);
insert into booking values(104,190,50,"online",4,401);
insert into booking values(105,120,70,"offline",5,501);
describe booking;

create table partphone( partid int, phoneno numeric(10,0),primary key ( partid,phoneno));
insert into partphone values(101,9769703651);
insert into partphone values(102,9856432910);
insert into partphone values(103,9074653298);
insert into partphone values(104,8958909718);
insert into partphone values(105,7849043789);
describe partphone;

create table memphone( membersid int, phoneno numeric(10,0));
insert into memphone values(1,8293716143);
insert into memphone values(2,7738327940);
insert into memphone values(3,8286832322);
insert into memphone values(4,3625147391);
insert into memphone values(5,3265987845);
describe memphone;

create table eventmember(eventcode int, memberid int, primary key(eventcode,memberid));
insert into eventmember values(1,1);
insert into eventmember values(2,2);
insert into eventmember values(3,3);
insert into eventmember values(4,4);
insert into eventmember values(5,5);
describe eventmember;







