create table ongaku.authentication_type(
    id serial primary key,
    type_name varchar(50) not null
);

create table ongaku.user(
    id serial primary key,
    username varchar(50) not null,
    email varchar(150) not null,
    password char(60) not null,
    active boolean not null default false,
    blocked boolean not null default false,
    deleted boolean not null default false,
    authentication_type_id int not null,
    created_at timestamp not null default now(),
    updated_at timestamp not null default now(),
    foreign key (authentication_type_id) references ongaku.authentication_type(id)
);

create table ongaku.role(
    id serial primary key,
    role_name varchar(50) not null
);

create table ongaku.permission(
    id serial primary key,
    permission_name varchar(100) not null
);

create table ongaku.user_role(
    id serial primary key,
    user_id int not null,
    role_id int not null,
    created_by int not null,
    updated_by int not null,
    created_at timestamp not null default now(),
    updated_at timestamp not null default now(),
    foreign key (user_id) references ongaku.user(id),
    foreign key (role_id) references ongaku.role(id),
    foreign key (created_by) references ongaku.user(id),
    foreign key (updated_by) references ongaku.user(id)
);

create table ongaku.role_permission(
    id serial primary key,
    role_id int not null,
    permission_id int not null,
    created_by int not null,
    updated_by int not null,
    created_at timestamp not null default now(),
    updated_at timestamp not null default now(),
    foreign key (role_id) references ongaku.role(id),
    foreign key (permission_id) references ongaku.permission(id),
    foreign key (created_by) references ongaku.user(id),
    foreign key (updated_by) references ongaku.user(id)
);

create table ongaku.login_log(
    id serial primary key,
    user_id int not null,
    login_at timestamp not null default now(),
    logout_at timestamp,
    foreign key (user_id) references ongaku.user(id)
);

