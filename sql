create table users(
    id serial not null primary key ,
    email varchar(50) not null ,
    password varchar(50) not null
);

create table employees(
    id serial not null primary key ,
    user_id serial not null references users(id),
    first_name varchar(50) not null ,
    last_name varchar(50) not null
);


create table candidates(
    id serial not null primary key ,
    user_id serial not null references users(id),
    first_name varchar(25) not null ,
    last_name varchar(25) not null ,
    identity_number varchar(11) not null ,
    birth_date date not null
);

create table companies (
    id serial not null primary key ,
    user_id serial not null references users(id),
    company_name varchar(250) not null ,
    web_address varchar(50) not null ,
    phone_number varchar(12) not null ,
    is_active boolean not null
);
create table company_activation_codes(
    id serial not null primary key ,
    company_id serial not null references companies(id),
    activation_code varchar(50) not null,
    is_confirmed boolean not null ,
    confirmed_date date
);
create table company_activation_employees(
    id serial not null primary key ,
    company_id serial not null references companies(id),
    confirmed_employee int ,
    confirmed_date date
);
create table job_titles(
    id serial not null primary key ,

    title varchar(50) not null

);

