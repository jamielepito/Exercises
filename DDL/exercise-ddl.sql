drop database if exists musical_recording_artists;
create database musical_recording_artists;
use musical_recording_artists;

create table artist (
	artist_id int primary key auto_increment,
    artist_name varchar(25) not null
);

create table album (
	album_id int primary key auto_increment,
    album_name varchar(25) not null,
	artist_id int not null,
    constraint fk_album_artist_id
		foreign key (artist_id)
        references artist (artist_id)
);