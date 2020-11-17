SELECT * FROM playlists;
SELECT * FROM playlist_track;
SELECT * FROM tracks;
SELECT * FROM genres;

SELECT genreid FROM genres
    WHERE name = "Latin";
    
SELECT * FROM tracks
    WHERE genreid NOT IN (SELECT genreid FROM genres
                          WHERE name = "Latin");
                          
SELECT playlist_track.playlistid, playlist_track.trackid FROM playlist_track
    JOIN tracks
    ON playlist_track.trackid = tracks.trackid
    WHERE genreid IN (SELECT genreid FROM genres
                          WHERE name = "Latin")
    GROUP BY playlist_track.trackid;   
                              
SELECT playlists.playlistid, playlists.name FROM playlists
    JOIN playlist_track
    ON playlists.playlistid = playlist_track.playlistid
    JOIN tracks
    ON playlist_track.trackid = tracks.trackid
    WHERE genreid IN (SELECT genreid FROM genres
                          WHERE name = "Latin")
    GROUP BY playlists.playlistid;
    
SELECT playlists.playlistid, playlists.name FROM playlists
    WHERE playlists.playlistid NOT IN (SELECT playlists.playlistid FROM playlists
                                          JOIN playlist_track
                                          ON playlists.playlistid = playlist_track.playlistid
                                          JOIN tracks
                                          ON playlist_track.trackid = tracks.trackid
                                          WHERE genreid IN (SELECT genreid FROM genres
                                                               WHERE name = "Latin"));
    



    
                        
