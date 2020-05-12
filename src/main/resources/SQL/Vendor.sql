create database VendorProject;

create table vendor(
				id int PRIMARY KEY auto_increment , 
                code char(30) , 
                name char(30) , 
                type char(30) ,
				email char(30) ,
                phone char(30) , 
                address char(30)
                
                );
                
select * from vendor;