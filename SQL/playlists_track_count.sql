--Provide a query that shows the total number of tracks in each playlist. 
--The Playlist name should be include on the resulant table.

SELECT p.PlaylistId as "Playlist Id",p.Name as "Playlist Name", COUNT (pl.TrackId) as "Number of Tracks"
FROM Playlist p, PlaylistTrack pl
Where pl.PlaylistId = p.PlaylistId
GROUP BY p.PlaylistId;