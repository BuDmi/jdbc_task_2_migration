create table CUSTOMERS
(
    id serial primary key,
    name varchar(90) not null,
    surname varchar(90) not null,
    age integer not null,
    phone_number varchar(20)
);

create table ORDERS
(
    id serial primary key,
    date timestamp not null,
    customer_id integer not null,
    product_name varchar(255) not null,
    amount integer not null,
    constraint fk_customer_id foreign key (customer_id) references customers(id)
);