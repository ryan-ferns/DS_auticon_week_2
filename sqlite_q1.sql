SELECT artists.name FROM artists 
WHERE artists.name NOT IN (SELECT artists.name FROM artists JOIN albums ON artists.artistid == albums.artistid)
    
    
