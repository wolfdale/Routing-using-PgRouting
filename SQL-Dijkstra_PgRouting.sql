## Again this Query is modified accoring to my need to handle unnoded shapefiles.
## Refer to PgRouting Docs For simple version to this Query



SELECT seq, id1 AS node, id2 AS edge, cost,geom
  FROM pgr_dijkstra(
    'SELECT   id::int4, source::int4  , target::int4 , st_length(geom) AS cost FROM network.ind_roads_linestring_noded',
   206, 8068, false, false
  )as di
  JOIN network.ind_roads_linestring_noded pt
  ON di.id2 = pt.id
