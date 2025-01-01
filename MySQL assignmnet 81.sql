use country;
select*from persons;
select*from country;
select*from country order by population desc;
select avg(Population) from country;
select avg (Population_Rating) from persons;
select Country_Name from country where Population > (select avg(Population) from country);
select avg(Population_Rating) from persons;
select Country_name from persons where Population_Rating > (select avg(Population_Rating) from persons);
select Country_name from persons where Population_Rating = 4;
select avg(Population_Rating) from persons group by Country_name;
create database product1; 
create table Customer1 (Customer_id Int Primary key,First_Name Varchar(10),Last_Name Varchar(10),Email Varchar(30),Phone_no int,Address Varchar(1000),
City varchar(10),State varchar(10),Zip_code int,Country varchar(10));
insert into Customer1(Customer_id,First_Name,Last_Name,Email,Phone_no,Address,
City,State,Zip_code,Country)values (2,'Christy','Francis','christeenFr@gmail.com',99994922,'North Basten','Basten','California',680631,'U.SA');
insert into Customer1(Customer_id,First_Name,Last_Name,Email,Phone_no,Address,
City,State,Zip_code,Country)values (3,'Lisa','Theresa','Lisatheresa@gmail.com',99994923,'Linganfort','Boston','Texas',680632,'U.S.A');
insert into Customer1(Customer_id,First_Name,Last_Name,Email,Phone_no,Address,
City,State,Zip_code,Country)values (4,'Allen','carpenter','Allencarpenter@gmail.com',99994924,'stanford','London','London',680633,'England');
select* from Customer;
insert into Customer1(Customer_id,First_Name,Last_Name,Email,Phone_no,Address,
City,State,Zip_code,Country)values (5,'Edward','Newgate','edwardnewgate@gmail.com',99994925,'Ourisa','Neworland','Ireland',680634,'U.K');
insert into Customer1(Customer_id,First_Name,Last_Name,Email,Phone_no,Address,
City,State,Zip_code,Country)values (6,'Gol','Roger','goldroger@gmail.com',99994924,'EastBlue','Turin','basein',680635,'Italy');
insert into Customer1(Customer_id,First_Name,Last_Name,Email,Phone_no,Address,
City,State,Zip_code,Country)values (7,'Tom','lantham','tomlantham@gmail.com',9999497,'Bantham','Orlands','Texas',680630,'U.S.A');
insert into Customer1(Customer_id,First_Name,Last_Name,Email,Phone_no,Address,
City,State,Zip_code,Country)values (8,'Sakaria','livingston','Sakariamoses@gmail.com',99994928,'westgate','Oharia','Ohms',680637,'Germany');
insert into Customer1(Customer_id,First_Name,Last_Name,Email,Phone_no,Address,
City,State,Zip_code,Country)values (9,'Joshua','laban','Joshuabinan@gmail.com',99994929,'lenam','bersce','madrid',680638,'Spain');
insert into Customer1(Customer_id,First_Name,Last_Name,Email,Phone_no,Address,
City,State,Zip_code,Country)values (10,'James','madisan','jamesmadison@gmail.com',99994930,'ottupara','Thrissur','kerala',680630,'India');
select*from Customer1;
create view Customer_info1 as select concat(First_name,'',Last_Name), Email from Customer1; 
select*from Customer_info1;
create view US_customers1 as select First_Name, Country from Customer1 where Country = 'U.S.A';
select*from us_customers1;
create view Customer_details1 as select concat(First_name,'',Last_Name), Email, phone_no, state from Customer1; 
select*from customer_details1;
update view Customer1 set phone_no = 99994923 where Customer_id ='2';
create view Customer_count as select count(state) as No_of_customers,state from Customer1 group by state;
select*from Customer_count where No_of_customers>1;
create view Customer_count1 as select count(state) as No_of_customers,state from customer_details1 group by state;
select*from Customer_count1;
select*from  customer_details1 order by state asc;
