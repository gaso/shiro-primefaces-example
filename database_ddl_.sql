CREATE ROLE shiro_demo LOGIN ENCRYPTED PASSWORD 'md5819fded3df8b41f2b7007bc2e4e867ff'
  SUPERUSER CREATEDB CREATEROLE
   VALID UNTIL 'infinity';

-- Default Password: testpass


CREATE DATABASE shiro_primefaces  WITH OWNER = shiro_demo ;


CREATE TABLE person (
    id SERIAL NOT NULL,
    name character varying(120) NOT NULL,
    email character varying(200) NOT NULL,
    login character varying(16) NOT NULL,
    password character varying(256) NOT NULL
);

CREATE TABLE role (
    id SERIAL NOT NULL,
    name character varying(10) NOT NULL
);

CREATE TABLE person_role (
    id SERIAL NOT NULL,
    id_person integer,
    id_role integer
);