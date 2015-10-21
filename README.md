# San Francisco and Oakland Neighborhoods Map

This simple rails application displays a map of San Francisco and Oakland neighborhoods based on Zillow Neighborhood Boundaries data: http://www.zillow.com/howto/api/neighborhood-boundaries.htm

The parsed data can be found in /public/sf-oak-neighborhoods.json. I took the Zillow Neighborhood Boundaries and converted them to GeoJSON via GDAL [http://www.gdal.org/ogr2ogr.html].

If you want to do this yourself, unzip the data files and run:
Second Tab:
```sh
$ ogr2ogr -f GeoJSON -where 'CITY="San Francisco" OR CITY="Oakland"' < your_filename.json > < source_filename.shp >
```

I used the Google Maps Javascript API for the base map and added the GeoJSON file as a data layer, which draws the neighborhood Polygons based on the coordinates from the file.

I then used the Mouseover map listener to expose the neighborhood name when you hover over it.