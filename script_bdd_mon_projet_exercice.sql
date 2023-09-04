DROP DATABASE IF EXISTS resumia;

CREATE DATABASE resumia;

CREATE TABLE resumia.user(
    email VARCHAR(50) NOT NULL PRIMARY KEY,
    password VARCHAR(255) NOT NULL,
    flux_rss VARCHAR(255),
    website VARCHAR(255),
    pdf VARCHAR(255),
    excel VARCHAR(255),
    csv VARCHAR(255),
    salt VARCHAR(255)
);

-- CREATE TABLE resumia.admin(
--     email VARCHAR(50) NOT NULL PRIMARY KEY,
--     password VARCHAR(255) NOT NULL,
-- );

-- CREATE TABLE resumia.source(
--     flux_rss VARCHAR(255),
--     website VARCHAR(255),
--     pdf VARCHAR(255),
--     excel VARCHAR(255),
--     csv VARCHAR(255)
-- );

