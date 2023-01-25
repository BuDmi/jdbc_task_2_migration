create table CUSTOMERS
(
    id serial primary key,
    name varchar(90) not null,
    surname varchar(90) not null,
    age integer not null,
    phone_number_new varchar(20)
);