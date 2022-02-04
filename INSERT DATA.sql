--insert into admin table---
insert into admin values('A01','rmendo@gmail.com','987654');

---insert into users table--
insert into users values('U01','MelDG123','mdg@gmail.com', '123456', '01-Jan-2022', 'Santa Rosa Laguna', '09123456789');
insert into users values('U02','RAM456','ram@gmail.com', '333333', '02-Jan-2022', 'Binan Laguna', '09232324451');
insert into users values('U03','RDG456','rdg@gmail.com', '444444', '03-Jan-2022', 'Cavinti Laguna', '09445566771');
insert into users values('U04','LBM987','LBM@gmail.com', '555555', '04-Jan-2022', 'Metro Manila', '09777788887');
insert into users values('U05','MLB789','MLB@gmail.com', '666666', '05-Jan-2022', 'Basista Pangasinan', '09998888786');

--insert into category table---
insert into category values('C01','Food');
insert into category values('C02','Appliances');
insert into category values('C03','Gadgets');

--insert into product table--
insert into product values('P01','Sausage', 'C01','300','ss.jpg');
insert into product values('P02','Hamburger', 'C01','200','hb.jpg');
insert into product values('P03','Pizza', 'C01','1000','pizza.jpg');
insert into product values('P04','Washing Machine', 'C02','20000', 'wm.jpg');
insert into product values('P05','Television', 'C02','35000', 'tv.jpg');
insert into product values('P06','Air-conditioner', 'C02','50000', 'aircon.jpg');
insert into product values('P07','Cellphone', 'C03','10000', 'cp.jpg');
insert into product values('P08','Laptop', 'C03','30000', 'laptop.jpg');
insert into product values('P09','Headphones', 'C03','3000', 'hp.jpg');

--insert into cart table--
insert into cart values('CA01','U01');
insert into cart values('CA02','U02');
insert into cart values('CA03','U03');
insert into cart values('CA04','U04');
insert into cart values('CA05','U05');

--insert into cart_items

insert into cart_items values('CI01','CA01','U01','P01','20');
insert into cart_items values('CI02','CA01','U01','P02','20');
insert into cart_items values('CI03','CA02','U02','P03','5');
insert into cart_items values('CI04','CA02','U02','P04','1');
insert into cart_items values('CI05','CA03','U03','P05','1');
insert into cart_items values('CI06','CA03','U03','P06','1');
insert into cart_items values('CI07','CA04','U04','P07','3');
insert into cart_items values('CI08','CA04','U04','P08','2');
insert into cart_items values('CI09','CA05','U05','P09','3');
insert into cart_items values('CI10','CA05','U05','P05','2');

--insert into coupon table--
insert into coupon values('CO01','Mega Sale 50','0.5','10-Feb-2022');
insert into coupon values('CO02','Super Sale 30','0.3','10-Feb-2022');
insert into coupon values('CO03','Big Sale 20','0.2','10-Feb-2022');

--insert into orders table--
insert into orders values('O01','CA01','U01','03-Feb-2022','10-Feb-2022','CO01','P01','150','COD');
insert into orders values('O02','CA02','U02','03-Feb-2022','10-Feb-2022','CO02','P02','140','COD');
insert into orders values('O03','CA03','U03','03-Feb-2022','10-Feb-2022','CO03','P04','16000','DEBIT');
insert into orders values('O04','CA04','U04','03-Feb-2022','10-Feb-2022','CO01','P05','17500','CREDIT');
insert into orders values('O05','CA05','U05','03-Feb-2022','10-Feb-2022','CO02','P06','35000','E-WALLET');
insert into orders values('O06','CA01','U01','03-Feb-2022','10-Feb-2022','CO03','P07','8000','DEBIT');
insert into orders values('O07','CA02','U02','03-Feb-2022','10-Feb-2022','CO02','P08','21000','CREDIT');
insert into orders values('O08','CA03','U03','03-Feb-2022','10-Feb-2022','CO01','P09','1500','E-WALLET');
insert into orders values('O09','CA04','U04','03-Feb-2022','10-Feb-2022','CO02','P03','700','E-WALLET');
