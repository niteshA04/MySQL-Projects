# BASICS SYNTAX PRACTICE

-- # CREATE DATABASE --
-- CREATE DATABASE record_company;

-- # THIS SELECTS THE DATABASE --
USE record_company;

-- # CREATING TABLE --
-- CREATE TABLE test(
-- 	test_column INT
-- );

-- # MODIFYING TABLE --
-- ALTER TABLE test

-- # DELETING TABLE --
-- ADD another_column VARCHAR(200);
-- DROP TABLE test;

# CREATING THE DATABASE OF MUSIC BANDS FOR RECORD COMPANY

-- # CREATING BANDS TABLE --
CREATE TABLE bands (
	id INT NOT NULL AUTO_INCREMENT, 
	name VARCHAR(50) NOT NULL,
    PRIMARY KEY (id)
);

-- # CREATING ALBUMS TABLE --
CREATE TABLE albums (
	id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    release_year INT,
    band_id INT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (band_id) REFERENCES bands(id)  
);

-- # ADDING BANDS TO THE TABLE ALBUM --
INSERT INTO bands (name)
VALUES ('Iron Maiden'), ('Deuce'), ('Avenged Sevenfold'), ('Ankor');

-- # SELECTING COLUMN --
select * from bands;
select * from bands limit 2;
select name from bands;
select id as 'ID', name as 'Band_Name'
from bands;
select * from bands order by name;

-- # ADDING ALBUMS --

insert into albums (name, release_year, band_id)
values	('The Number of the Beasts', 1985, 1),
		('Power Slave', 2018, 1),
		('Nightmare', 2019, 2),
		('nightmare', 2020, 3),
		('Test Album', NULL, 3);

-- # ACCESING FROM ALBUM --
select * from albums;

-- # TO ELIMINATE DUPLICATE ELEMENTS --
select distinct name from albums;

-- # UPDATING THE DATA --
update albums
set release_year = 1982 where id = 1;

# FILTERING THE DATA WITH WHERE

select * from albums
where release_year < 2000;

select * from albums
where name like '%er%';

select * from albums
where name like '%er%' and band_id = 1;

select * from albums
where name like '%er%' or band_id = 1;

select * from albums
where release_year between 2000 and 2020;

select * from albums
where release_year = null;

-- # DELETE SINGLE ROW --
delete from albums where id = 5;
select * from albums;

# JOINING TABLE
select * from bands
inner join albums on bands.id = albums.band_id;

select * from bands
left join albums on bands.id = albums.band_id;

select * from bands
right join albums on bands.id = albums.band_id;

# AGGREGATE FUNCTION
select avg(release_year) from albums;

select 	sum(release_year) from albums;

# GROUP BY FUNCTION
select band_id, count(band_id) from albums
group by band_id;

# ALIAS TABLES
select b.name as band_name, count(a.id) as num_albums
from bands as b
left join albums as a on b.id = a.band_id
group by b.id;

# HAVING FUNCTION
select b.name as band_name, count(a.id) as num_albums
from bands as b
left join albums as a on b.id = a.band_id
group by b.id
having num_albums = 1;

















