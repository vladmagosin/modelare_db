--ONE TO ONE

CREATE TABLE IF NOT EXISTS users(
    id serial primary key not null,
	name varchar(50) not null,
	email varchar(50) null,
	phone_number varchar(20) null
);

CREATE TABLE IF NOT EXISTS adress(
    id serial primary key not null, --coloana id joaca dublu rol si de PK si FK pentru ca o cheie primara este by default unica 
	adress varchar(200) not null,
	is_valid bool not null,
	foreign key(id)references users(id)
);

--definitii la fel si 2 si 3

CREATE TABLE IF NOT EXISTS adress(
    id serial primary key not null,
	users_id integer not null UNIQUE,
	adress varchar(200) not null,
	is_valid bool not null,
	foreign key(id)references users(id)
);

CREATE TABLE IF NOT EXISTS books(
    id serial primary key not null,
	title varchar(100)not null,
	isbn varchar(10) not null,
	published_date date not null,
	price decimal null
);

CREATE TABLE IF NOT EXISTS users_books(
    id serial primary key not null,
	users_id integer not null,
	books_id integer not null,
	review text not null,
	review_date date not null,
	foreign key(users_id)references users(id),
	foreign key(books_id)references books(id)
);

CREATE TABLE IF NOT EXISTS profesor(
    id serial primary key not null,
	name varchar(50) not null,
	course varchar(100) not null,
	phone_number integer not null
);

CREATE TABLE IF NOT EXISTS materie(
    id serial primary key not null,
	department varchar(100) not null,
	description varchar(200) not null,
	scheduale varchar(100) not null
);

CREATE TABLE IF NOT EXISTS profesor_materie(
    id serial primary key not null,
	profesor_id integer not null,
	materie_id integer not null,
	course_date date not null,
	foreign key(profesor_id)references profesor(id),
	foreign key(materie_id)references materie(id)
);