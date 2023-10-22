CREATE TABLE users (
                       id BIGINT UNSIGNED AUTO_INCREMENT,
                       username VARCHAR(30) NOT NULL,
                       password VARCHAR(80) NOT NULL,
                       email VARCHAR(50) UNIQUE,
                       PRIMARY KEY (id)
);

CREATE TABLE roles (
                       id INT UNSIGNED AUTO_INCREMENT,
                       name VARCHAR(50) NOT NULL,
                       PRIMARY KEY (id)
);

CREATE TABLE users_roles (
                             user_id BIGINT UNSIGNED NOT NULL,
                             role_id INT UNSIGNED NOT NULL,
                             PRIMARY KEY (user_id, role_id),
                             FOREIGN KEY (user_id) REFERENCES users(id),
                             FOREIGN KEY (role_id) REFERENCES roles(id)
);

insert into roles(name)
values
    ('ROLE_USER'), ('ROLE_ADMIN');
insert into users (username,password,email)
values ('admin', '$2a$12$z0y8ACHkKW2hxyupp9xUvOTIB7iEzOIqJRJIeQo19rLCOj8DbbTUG','admin@gmail.com');
# password = admin
insert into users_roles (user_id, role_id) value (1,2);

insert into users (username,password,email)
values ('user', '$2a$12$PjFUteSpp1fxc28.xiXCvOefO1caAOuFGW.4TAsYwUea.6NDQ75pO','user@gmail.com');
insert into users_roles (user_id, role_id) value (2,1);
# password = user

insert into users (username,password,email)
values ('Andrei', '$2a$12$lhB9m7tPXEaPf4CGz1LPbeH.e5ATYOxlMfqjr5ylyDY9rDKdRPK0u','user@gmail.com');
insert into users_roles (user_id, role_id) value (3,1);
# password = Andrei

insert into users (username,password,email)
values ('Victory', '$2a$12$3R.1vsoVgQY9Ph3RQuwHXeD8yK/6r18yzTNZdhTcnuJpcVxHtrkru','user@gmail.com');
insert into users_roles (user_id, role_id) value (4,1);
# password = Victory

insert into users (username,password,email)
values ('bot', '$2a$12$Q/Vt/7bxe2mdSyhKl4EoqeX.tyrf2jEH4QDZ6X0mgRleMJpGK5BAu','user@gmail.com');
insert into users_roles (user_id, role_id) value (5,1);
# password = bot




