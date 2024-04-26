create table users
(
    id         bigint unsigned primary key auto_increment,
    name       varchar(255),
    family     VARCHAR(255),
    email      varchar(50),
    password   VARCHAR(255),
    created_at datetime default CURRENT_TIMESTAMP
);