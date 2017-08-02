--Provide a query that shows all the Tracks, but displays no IDs. The result should include the Album name, 
--Media type and Genre.

SELECT t.Name as "Track Name", al.Title as "Album", g.Name as "Genre", mt.Name as "MediaType"
FROM Track t, MediaType mt, Genre g, Album al
Where t. AlbumId = al.AlbumId
AND t.MediaTypeId = mt.MediaTypeId
AND t.GenreId = g.GenreId;