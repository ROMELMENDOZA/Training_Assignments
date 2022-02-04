--admin table--
CREATE TABLE admin(admin_id varchar2(10),
email varchar2(20),
password varchar2(20));

select*from admin

---users table---

CREATE TABLE users(user_id varchar2(10) PRIMARY KEY check(user_id like 'U%'),
user_name varchar2(10) not null,
email varchar2(20),
password varchar2(20),
date_of_reg date,
address varchar2(30) not null,
contact_no number(20));

select*from users

--category table--

CREATE TABLE category(category_id varchar2 (10) PRIMARY KEY check(category_id like 'C%'),
category_name varchar2(30));

select*from category

--product table--

CREATE TABLE product (product_id varchar2(10) PRIMARY KEY check(product_id like 'P%'),
product_name varchar2(40) not null,
category_id varchar2(10),
product_price number (10,2) not null,
product_image varchar2(10),
foreign key (category_id) references category(category_id));

select*from product

--cart table--

CREATE TABLE cart(cart_id varchar2(10) PRIMARY KEY check(cart_id like 'CA%'),
user_id varchar2(10),
foreign key (user_id) references users(user_id));

select*from cart

--cart_items table--

CREATE TABLE cart_items(cart_items_id varchar2(10) PRIMARY KEY check(cart_items_id like 'CI%'),
cart_id varchar2(10),
user_id varchar2(10),
product_id varchar2(10),
product_qty number(10,2),
foreign key (user_id) references users(user_id),
foreign key (cart_id) references cart(cart_id),
foreign key (product_id) references product(product_id));

select*from cart_items;

--coupon table--
CREATE TABLE coupon(coupon_id varchar2(10) primary key check(coupon_id like 'CO%'),
coupon_name varchar2(30) not null,
discount_val number (10,2),
expiry_date date);

select *from coupon

--orders table--    
CREATE TABLE orders(order_id varchar2(10) primary key check(order_id like 'O%'),
cart_id varchar2(10),
user_id varchar2(10),
order_date date default sysdate,
delivery_date date default sysdate+7,
coupon_id varchar2(10),
product_id varchar2(10),
bill_amount number(10,2),
payment_method varchar2(10),
foreign key (cart_id) references cart(cart_id),
foreign key(user_id) references users(user_id),
foreign key (product_id) references product(product_id),
foreign key (coupon_id) references coupon(coupon_id),
constraint ck_payment_method check(payment_method in( 'COD', 'CREDIT', 'DEBIT', 'E-WALLET')));

select*from orders



