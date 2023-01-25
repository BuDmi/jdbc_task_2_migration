create table ORDERS
(
    id serial primary key,
    date timestamp not null,
    customer_id integer not null,
    product_name varchar(255) not null,
    amount integer not null,
    constraint fk_customer_id foreign key (customer_id) references customers(id)
);