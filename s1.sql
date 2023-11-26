CREATE TABLE IF NOT EXISTS propietar(
    id  serial primary key not null,
    nume varchar(50) not null,
	cnp varchar(13) not null,
	serie_nr_ci varchar(9) not null
);

CREATE TABLE IF NOT EXISTS adresa_propietar(
    id serial primary key not null,
	adresa varchar(200) not null,
	current_adres bool default TRUE,
    foreign key(id) references propietar(id)
);

CREATE TABLE IF NOT EXISTS terenuri(
    id serial primary key not null,
	cf integer not null,
	intravilan bool not null,
	suprafata decimal not null,
	categorie_folosinta varchar(5) not null
);
--implementare relatie many to many propietar cu terenuri
CREATE TABLE IF NOT EXISTS propietar_terenuri(
     id serial primary key not null,
	 propietar_id integer not null,
	 terenuri_id integer not null,
	 foreign key(propietar_id)references propietar(id),
	 foreign key(terenuri_id)references terenuri(id)
);

CREATE TABLE IF NOT EXISTS propietar_terenuri2(
	 propietar_id integer not null,
	 terenuri_id integer not null,
	 primary key(propietar_id, terenuri_id),
	 foreign key(propietar_id)references propietar(id),
	 foreign key(terenuri_id)references terenuri(id)
);