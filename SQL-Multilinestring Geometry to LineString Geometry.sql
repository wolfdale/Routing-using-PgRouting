##My Shapefile is in Multilinestring and shape file is not noded, therefore i need to convert it to linestring Geom to work 
## Refer to PgRouting Documentation (How to handle unnoded shapefiles)

INSERT INTO network.ind_roads_linestring(id, geom)
SELECT id, (ST_Dump(geom)) .geom
FROM network.ind_road;
