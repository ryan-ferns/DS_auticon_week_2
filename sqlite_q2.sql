SELECT artists.name FROM artists
    JOIN albums 
    ON artists.artistid == albums.artistid
    WHERE albumid IN (SELECT albumid FROM tracks
                         WHERE genreid IN (SELECT genreid FROM genres
                                               WHERE name = "Latin"))
    GROUP BY artists.name;
    
    
    
