-- Section1
create table events
(
    id          bigint unsigned primary key auto_increment,
    name        varchar(255),
    description text,
    date        datetime,
    created_at  datetime default current_timestamp
);
-- Section2
create table event_user
(
    user_id  bigint unsigned,
    event_id bigint unsigned,
    foreign key (user_id) references users (id) on DELETE CASCADE,
    foreign key (event_id) references events (id)


);
