CREATE TABLE IF NOT EXISTS country (
    id serial primary key not null,
	indicativ CHAR(3) not null,
	geometry VARCHAR(100) not null, 
	area DECIMAL not null
);

CREATE TABLE IF NOT EXISTS county(
    id serial primary key not null, 
    country_id integer not null, 
	area decimal not null, 
	siruta integer not null,
	geometry VARCHAR(100) not null default 'POLYGON',
	foreign key(country_id)references country(id) 
);

CREATE TABLE IF NOT EXISTS universitate(
    id serial primary key not null,
	director VARCHAR(100) not null,
	adress VARCHAR(100) not null,
	phone_number integer not null
);

CREATE TABLE IF NOT EXISTS facultati(
    id serial primary key not null,
	universitate_id integer not null,
	departament VARCHAR(100) not null,
	secretariat VARCHAR(100) not null,
	profesori VARCHAR(100) not null,
	foreign key (universitate_id)references universitate(id)
);

