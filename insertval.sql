INSERT INTO artists (artist_id, artist_name)
VALUES (1, 'Kordhell'), (2, 'Eminem'), (3, 'Pastel Ghost'), (4, 'Pathetic'), (5, 'Scarlxrd'), (6, 'Lil Darkie');

INSERT INTO genre (genre_id, name)
VALUES (1, 'Phonk'), (2, 'Experimental Electronic'), (3, 'Rap'), (4, 'Hip-Hop'), (5, 'Trap Metal');

INSERT INTO albums (album_id, album_name, release_year)
VALUES (1, 'PSYCHX', 2022), (2, 'Revival', 2017), (3, 'boros', 2021), (4, 'Abyss', 2015);

INSERT INTO collection (collection_id, name, release_year)
VALUES (1, 'It''s All Rap', 2019), (2, 'Chill', 2022), (3, 'Aggresive', 2023), (4, 'Dreaming', 2021);

--Треки которые не входят в вышеперечисленные альбомы
INSERT INTO albums (album_id, album_name, release_year)
VALUES (5, 'HAHA', 2019), (6, 'Acquired Taste: Vxl. 1', 2019), (7, 'banana pie', 2020), (8, 'We Will Fly', 2022), (9, 'Curtain Call: The Hits', 2005),
(10, 'Murder In My Mind', 2022), (11, 'Scopin', 2022), (12, 'SWAMP', 2020), (13, 'Dreamcore', 2021), (14, 'moving fast', 2021), (15, 'Ethereality', 2018);

INSERT INTO tracks (track_name, track_duration_sec, album_id)
VALUES ('MISS ME', 133, 1), ('KILLING THE SURFACE', 158, 1), ('I FEEL ALIVE', 122, 1), ('MADEINHELL PT. 1', 150, 1), ('THIS IS MY LIFE', 127, 1), ('I''M THE DEVIL', 120, 1),
('JEKYLL & HYDE', 112, 1), ('FIND YXURSELF', 155, 1), ('MADEINHELL PT. 2', 107, 1), ('LIKE YXU WXULD KNXW (AUTUMN TREES)', 210, 1),
('Walk On Water', 303, 2), ('Believe', 315, 2), ('Chloraseptic', 301, 2), ('Untouchable', 370, 2), ('River', 221, 2), ('Remind Me (Intro)', 26, 2),
('Remind Me', 225, 2), ('Revival (Interlude)', 51, 2), ('Like Home', 245, 2), ('Bad Husband', 287, 2), ('Tragic Endings', 252, 2), ('Framed', 252, 2),
('Nowhere Fast', 264, 2), ('Heat', 250, 2), ('Offended', 320, 2), ('Need Me', 265, 2), ('In Your Head', 182, 2), ('Castle', 254, 2),
('Arose', 274, 2),
('boros', 82, 3), ('put it in', 90, 3), ('revert', 93, 3), ('microplastic', 71, 3), ('hubris', 86, 3),
('gangster rapper punk rockstar', 177, 3), ('super ego', 110, 3), ('owl effigy', 161, 3), ('yeti', 287, 3), ('ouro', 107, 3), ('futile', 126, 3),
('Prism', 208, 4), ('Embrace', 204, 4), ('Clouds', 246, 4), ('Shadows', 208, 4), ('Skeleton', 239, 4), ('Dark Beach', 221, 4),
('Translucid', 196, 4), ('Lilacs', 219, 4), ('Pulse', 242, 4), ('Abyss', 266, 4),
('HAHA', 160, 5), ('TILL I''M XLD.', 153, 6), ('VACATIXN.', 206, 6), ('banana pie', 169, 7), ('We Will Fly', 167, 8), ('Mockingbird', 250, 9),
('Murder In My Mind', 145, 10), ('Scopin', 101, 11), ('BAR FIGHT MUSIC', 189, 12), ('moving fast', 184, 14), ('Emotion', 224, 15), ('Dreamcore', 178, 13);

INSERT INTO collectiontracks (collection_id, track_id)
VALUES (1, 15), (1, 25), (1, 51), (1, 52), (1, 53),
(2, 46), (2, 44), (2, 54), (2, 55), (2, 56),
(3, 57), (3, 58), (3, 3), (3, 59), (3, 40),
(4, 62), (4, 60), (4, 46), (4, 61), (4, 42);

INSERT INTO artistgenre (artist_id, genre_id)
VALUES (1, 1), (2, 3), (2, 4), (3, 2), (4, 2), (5, 3), (5, 5), (6, 3), (6, 5);

INSERT INTO artistsalbum (album_id, artist_id)
VALUES (1, 1), (2, 2), (3, 6), (4, 3), (5, 6),
(1, 5), (6, 5), (7, 6), (8, 6), (9, 2), (10, 1),
(11, 1), (12, 6), (13, 4), (14, 6), (15, 3);