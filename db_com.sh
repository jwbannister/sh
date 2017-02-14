#!/usr/bin/env bash
psql -h 192.168.22.42 -d owenslake -U jbannister <<EOF
CREATE TEMP TABLE tmp AS  
SELECT mass.coll_id, mass.site, mass.start_datetime, 
  mass.collection_datetime, mass.sandmass, mass.catch_full, mass.catch_wet, 
  mass.catch_spilled, idep.easting_utm AS x, idep.northing_utm AS y
FROM sandcatches.csc_data mass
JOIN instruments.deployments idep
ON mass.deployment_id=idep.deployment_id
JOIN instruments.areas ia
ON idep.area_id=ia.area_id
WHERE ia.description='Tillage with BACM Backup (TwB2)'
ORDER BY mass.coll_id, mass.site;
\copy tmp TO '/home/john/Desktop/twb2_mass.csv' (FORMAT CSV, HEADER);
EOF

