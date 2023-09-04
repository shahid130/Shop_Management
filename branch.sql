clear screen;

drop table Branch CASCADE CONSTRAINTS;

--> Branch Table
CREATE TABLE Branch(
BranchID INT not null,
ShopID INT Not NULL,
branch_name VARCHAR(30) NOT NULL,
branch_address VARCHAR(200) NULL,
branch_contact VARCHAR(20) NULL,
branch_email VARCHAR(30) check(branch_email like '%_@__%.__%'),
CONSTRAINT fk_shopID FOREIGN KEY (ShopID) REFERENCES Shop(ShopID),
PRIMARY KEY (BranchID));

insert into Branch 
values (1,1,'dhaka','Mohakhali','01730957466', 'dhaka@gmail.com');
insert into Branch
values (2,1,'rangpur','Noorpur','01832115427', 'rangpur@gmail.com');

commit;
