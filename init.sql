CREATE TABLE admins(
    admin_id varchar(20) primary key,
    admin_username varchar(50) not null unique,
    admin_password varchar(150) not null,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE users(
    user_id varchar(20) primary key,
    username VARCHAR(50) NOT NULL unique,
    password varchar(150) not null,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    name text not null,
    birth_date date not null,
    gender varchar(6) check(gender in ('Male', 'Female'))
);

CREATE TABLE students(
    user_id varchar(20) references user(user_id) primary key,
)
