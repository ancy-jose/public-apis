use HotelBookingDb

CREATE TABLE Hotel(
Hotel_Id varchar(200) not null PRIMARY KEY,
Hotel_name varchar(255),
Location varchar (200),
Phone_num varchar(200),
Rating float(50)
)
insert into Hotel values ('PR147','Radisson Blu','CP','7865462876','4.5'),('PR178','Vivanta by Taj','Dwarka','6437846840','4'),('EX324','Le Meridian','CP','6473984739','4'),('EX345','Pullman','Aerocity','9872536478','3.5'),
('EX765','Roseate House','Aerocity','8764563728','4.5'),('SU786','Trident','Gurgaon','9823554676','4'),('SU023','The Umrao','Gurgaon','9873452657','3.5'),('SU768','The Oberoi','Udyog Vihar','9965478328','4'),('SU355','Crown Plaza','Rohini','7634526770','3.5'),
('EX333','Lemon Tree','Janakpuri','8764356279','4');

select * from Hotel


CREATE TABLE Room(
Room_num int not null PRIMARY KEY,
Hotel_Id varchar(200) FOREIGN KEY REFERENCES Hotel(Hotel_Id) ON UPDATE CASCADE ON DELETE CASCADE,
Hotel_name varchar(255) ,
Room_type varchar(255) not null,
Room_view varchar(200),
Price int,
Occupancy int
)
insert into Room values
('233','PR178','Vivanta by Taj','Suite','Pool','9500','4'),
('240','PR178','Vivanta by Taj','Premium','Lake','6500','4'),
('238','PR178','Vivanta by Taj','Premium','Pool','3500','3'),
('245','PR178','Vivanta by Taj','Premium','Garden','4500','2'),
('250','PR178','Vivanta by Taj','Executive','Garden','5500','4'),

('334','PR147','Radisson Blu','Premium','Pool','4000','4'),
('337','PR147','Radisson Blu','Suite','Mountain','5000','4'),
('342','PR147','Radisson Blu','Premium','Pool','6000','2'),
('354','PR147','Radisson Blu','Suite','Garden','7000','4'),
('330','PR147','Radisson Blu','Executive','Lake','3000','3'),

('426','EX324','Le Meridian','Executive','Pool','4300','5'),
('435','EX324','Le Meridian','Suite','Mountain','4500','3'),
('425','EX324','Le Meridian','Premium','Pool','5300','5'),
('450','EX324','Le Meridian','Executive','Pool','6300','5'),
('407','EX324','Le Meridian','Premium','Lake','4300','5'),


('506','EX345','Pullman','Executive','Garden','4800','4'),
('556','EX345','Pullman','Suite','Pool','4300','3'),
('560','EX345','Pullman','Executive','Lake','3200','5'),
('534','EX345','Pullman','Premium','Pool','2800','2'),
('500','EX345','Pullman','Executive','Mountain','1300','4'),


('664','EX765','Roseate House','Executive','Mountain','5200','6'),
('600','EX765','Roseate House','Suite','Lake','3000','4'),
('660','EX765','Roseate House','Pool','Garden','6200','3'),
('612','EX765','Roseate House','Premium','Mountain','3600','2'),
('634','EX765','Roseate House','Suite','Mountain','5000','6'),

('133','SU786','Trident','Suite','Pool','9500','4'),
('140','SU786','Trident','Premium','Lake','6500','4'),
('138','SU786','Trident','Premium','Pool','3500','3'),
('145','SU786','Trident','Premium','Garden','4500','2'),
('150','SU786','Trident','Executive','Garden','5500','4'),

('734','SU023','The Umrao','Premium','Pool','4000','4'),
('737','SU023','The Umrao','Suite','Mountain','5000','4'),
('742','SU023','The Umrao','Premium','Pool','6000','2'),
('754','SU023','The Umrao','Suite','Garden','7000','4'),
('730','SU023','The Umrao','Executive','Lake','3000','3'),


('826','SU768','The Oberoi','Executive','Pool','4300','5'),
('835','SU768','The Oberoi','Suite','Mountain','4500','3'),
('825','SU768','The Oberoi','Premium','Pool','5300','5'),
('850','SU768','The Oberoi','Executive','Pool','6300','5'),
('807','SU768','The Oberoi','Premium','Lake','4300','5'),

('906','SU355','Crown Plaza','Executive','Garden','4800','4'),
('956','SU355','Crown Plaza','Suite','Pool','4300','3'),
('960','SU355','Crown Plaza','Executive','Lake','3200','5'),
('934','SU355','Crown Plaza','Premium','Pool','2800','2'),
('900','SU355','Crown Plaza','Executive','Mountain','1300','4'),

('016','EX333','Lemon Tree','Executive','Garden','4800','4'),
('056','EX333','Lemon Tree','Suite','Pool','4300','3'),
('060','EX333','Lemon Tree','Executive','Lake','3200','5'),
('034','EX333','Lemon Tree','Premium','Pool','2800','2'),
('007','EX333','Lemon Tree','Executive','Mountain','1300','4')


select * from Room


CREATE TABLE Booking(
Booking_Id int not null PRIMARY KEY,
Hotel_Id varchar(200) FOREIGN KEY REFERENCES Hotel(Hotel_Id) ON UPDATE CASCADE ON DELETE CASCADE,
Room_num INT FOREIGN KEY REFERENCES Room(Room_num) ON UPDATE NO ACTION ON DELETE NO ACTION,
Booking_date DATE
)
insert into Booking values
('10001','PR178','250','2021-12-10'),
('10002','PR178','233','2021-02-13'),
('10012','PR178','238','2021-02-13'),
('10022','PR178','240','2021-02-13'),
('10032','PR178','245','2021-02-13'),


('10003','EX324','407','2021-10-15'),
('10013','EX324','425','2021-10-15'),
('10023','EX324','426','2021-10-15'),
('10033','EX324','435','2021-10-15'),
('10133','EX324','450','2021-10-15'),

('10004','EX345','500','2021-12-10'),
('10054','EX345','506','2021-12-10'),
('10014','EX345','534','2021-12-10'),
('10007','EX345','556','2021-09-05'),
('10024','EX345','560','2021-12-10'),

('10011','PR147','330','2021-12-10'),
('10031','PR147','337','2021-12-10'),
('10021','PR147','334','2021-12-10'),
('10041','PR147','342','2021-12-10'),
('10141','PR147','354','2021-12-10'),

('10006','SU786','138','2021-06-04'),
('10016','SU786','140','2021-06-04'),
('10026','SU786','145','2021-06-04'),
('10036','SU786','150','2021-06-04'),
('10060','SU786','133','2021-12-09'),


('10008','SU768','835','2021-11-05'),
('10018','SU768','807','2021-11-05'),
('10028','SU768','825','2021-11-05'),
('10038','SU768','826','2021-11-05'),
('10048','SU768','850','2021-11-05'),

('10010','EX333','7','2021-12-09'),
('10020','EX333','16','2021-12-09'),
('10030','EX333','34','2021-12-09'),
('10040','EX333','56','2021-12-09'),
('10050','EX333','60','2021-12-09'),

('10015','EX765','612','2021-07-05'),
('10035','EX765','660','2021-07-05') ,
('10055','EX765','664','2021-06-04') ,
('10045','EX765','600','2021-07-05'),
('10025','EX765','634','2021-07-05'),

('10017','SU023','730','2021-09-05'),
('10037','SU023','734','2021-09-05'),
('10057','SU023','742','2021-09-05'),
('10047','SU023','737','2021-09-05'),
('10027','SU023','754','2021-09-05'),

('10019','SU355','960','2021-08-15'),
('10049','SU355','900','2021-08-15'),
('10059','SU355','906','2021-08-15'),
('10039','SU355','956','2021-08-15'),
('10029','SU355','934','2021-08-15');



SELECT * from Booking

CREATE TABLE Guest(
Guest_Id varchar(200) not null PRIMARY KEY,
Booking_Id int FOREIGN KEY REFERENCES Booking(Booking_Id) ON UPDATE CASCADE ON DELETE CASCADE,
Name varchar(250) not null,
Address varchar(200),
Phone_num varchar(250)
)
insert into Guest values
('01','10001','Nipurn','Delhi','6747094775'),('02','10002','Ronaldo','Mumbai','9833546772'),('03','10003','Messi','Kolkata','7863679384'),('04','10004','Ramos','Rajasthan','9765764454'),
('05','10016','Varane','Indore','7544575766'),('06','10006','Modric','Delhi','6675446575'),('07','10141','Kroos','Mumbai','64478586919'),('08','10008','Casemiro','Jammu','98767545314'),
('09','10019','Bale','Rajasthan','8865684742'),('10','10010','Rashford','Ahmedabad','6554458699');

select * from Guest
