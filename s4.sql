CREATE TABLE accounts(
    id integer primary key NOT NULL,
	username VARCHAR(50) NOT NULL,
	password VARCHAR(50) NOT NULL,
	email varchar(50) NOT NULL
);

CREATE TABLE universitate_stuff(
    id integer primary key NOT NULL,
	director VARCHAR(50) NOT NULL,
	profesor VARCHAR(50) NOT NULL,
	secretar varchar(50) NOT NULL
);

CREATE TABLE universitate(
    id integer primary key NOT NULL,
	adress VARCHAR(50) NOT NULL,
	adress_number integer NOT NULL,
    phone_number integer NOT NULL
);

CREATE TABLE cursuri(
    id integer primary key NOT NULL,
	course_name VARCHAR(50) NOT NULL,
	scheduale VARCHAR(50) NOT NULL,
	frequency varchar(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS roles(
    id INTEGER PRIMARY KEY NOT NULL,
	name VARCHAR (255) UNIQUE NOT NULL
);

CREATE TABLE IF NOT EXISTS teacher_roles(
    id SERIAL PRIMARY KEY NOT NULL,
	name VARCHAR (255) UNIQUE NOT NULL
);
--urmeaza sa creem un tabel cu cheie primara simpla 

/* multiline comment 
create table if not exists account_roles(
     id serial not null,
	 name varchar(50) not null unique,
	 creation_date date not null,
	 primary key(id)
);
*/
create table if not exists account_roles2(
     id serial not null,
	 name varchar(50) not null unique,
	 creation_date date not null,
	 primary key(id, name)
);

create table if not exists account_roles3(
     id integer not null,
	 name varchar(50) not null,
	 creation_date date not null,
	 primary key(id, name)
);
/*ASSIGMENT 
1. 2 tabele cu cheie primara simpla 
2. 2 tabele cu cheie primara compusa
3. fiecare tabel trebuie sa aiba o costrangere de UNIQUE pe una din coloane 
4. minim 4 coloane pe tabel 
5. sa utilizati tipurile INTEGER, SERIAL, VARCHAR, DATE, CHAR SI SMALLINT
6. cheia primara se seteaza dupa definirea coloanelor.
*/

create table if not exists organization(
	id integer primary key not null,
	name VARCHAR(50) UNIQUE not null,
	e_mail CHAR(50) not null,
	adress VARCHAR(50) not null,
	primary key(id)
);

create table if not exists organization2(
	id integer  unique not null, 
	director VARCHAR(50) not null,
	identification_code smallint null, 
	phone_number integer not null,
	primary key(id)
);

create table if not exists organization3(
	id serial unique not null,
	employes VARCHAR(50) not null,
	task CHAR(50) not null, 
    deadline integer not null,
	primary key(id, employes)
);

create table if not exists organization4(
	id serial unique not null,
	name VARCHAR(50) not null,
	user_name VARCHAR(50) not null,
	first_date date not null, 
	primary key(id, name)
);
