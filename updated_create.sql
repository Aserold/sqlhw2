CREATE TABLE IF NOT EXISTS Artists (
    artist_id SERIAL PRIMARY KEY,
    artist_name VARCHAR(60) NOT NULL
);

CREATE TABLE IF NOT EXISTS Albums (
    album_id SERIAL PRIMARY KEY,
    album_name VARCHAR(60) NOT NULL,
    release_year SMALLINT NOT NULL
);

CREATE TABLE IF NOT EXISTS Genre (
    genre_id SERIAL PRIMARY KEY,
    name VARCHAR(60) UNIQUE NOT NULL
);

CREATE TABLE IF NOT EXISTS Tracks (
    track_id SERIAL PRIMARY KEY,
    track_name VARCHAR(60) NOT NULL,
    track_duration_sec NUMERIC(10, 3),
    album_id INTEGER REFERENCES Albums(album_id)
);

CREATE TABLE IF NOT EXISTS Collection (
    collection_id SERIAL PRIMARY KEY,
    name VARCHAR(60) NOT NULL,
    release_year SMALLINT NOT NULL
);

CREATE TABLE IF NOT EXISTS ArtistGenre (
    artist_genre_id SERIAL PRIMARY KEY,
    artist_id INTEGER NOT NULL REFERENCES Artists(artist_id),
    genre_id INTEGER NOT NULL REFERENCES Genre(genre_id)
);

CREATE TABLE IF NOT EXISTS ArtistsAlbum (
    artist_album_id SERIAL PRIMARY KEY,
    album_id INTEGER NOT NULL REFERENCES Albums(album_id),
    artist_id INTEGER NOT NULL REFERENCES Artists(artist_id)
);

CREATE TABLE IF NOT EXISTS CollectionTracks (
    collection_tracks_id SERIAL PRIMARY KEY,
    collection_id INTEGER NOT NULL REFERENCES Collection(collection_id),
    track_id INTEGER NOT NULL REFERENCES Tracks(track_id)
);