SELECT * FROM media_types;
SELECT * FROM tracks;

SELECT * FROM media_types
    WHERE name LIKE "%video%";  
    
SELECT mediatypeid FROM media_types WHERE name LIKE "%video%";

SELECT tracks.name, MAX(tracks.milliseconds) FROM tracks
    JOIN media_types
    ON tracks.mediatypeid = media_types.mediatypeid
    WHERE tracks.mediatypeid IN (SELECT mediatypeid FROM media_types WHERE name LIKE "%video%");
      
   
    
    
