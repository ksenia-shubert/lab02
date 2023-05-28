CREATE table region
(
	identifier int primary key,
	description varchar(100)
);

CREATE table country
(
	identifier int primary key,
	region int,
	description varchar(100)
);

CREATE TABLE city 
(
	identifier int primary key,
	country int,
	description varchar(100),
	latitude double precision,
	longitude double precision,
	dataset varchar(50)
);

CREATE TABLE measurement
(
	city int,
	mark timestamp without time zone,
	temperature float
);

CREATE TABLE coastline
(
	shape double precision,
	segment double precision,
	latitude double precision,
	longitude double precision
);

ALTER TABLE country ADD FOREIGN KEY (region) REFERENCES region(identifier);
ALTER TABLE city ADD FOREIGN KEY (country) REFERENCES country(identifier);
ALTER TABLE measurement ADD FOREIGN KEY (city) REFERENCES city(identifier);
