INSERT INTO network.ind_roads_linestring(id, geom)
SELECT id, (ST_Dump(geom)) .geom
FROM network.ind_road;
