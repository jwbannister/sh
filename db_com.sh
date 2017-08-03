#!/usr/bin/env bash
psql -h $PSQL_HOST_OWENS -d owenslake -U airsci <<EOF
CREATE TEMP TABLE tmp AS  
SELECT datetime, site, aspd AS ws, dir AS wd, teom AS pm10 
FROM archive.mfile_data 
WHERE (datetime - '1 second'::interval)::date>='2017-01-01'::date
ORDER BY site, datetime;
\copy tmp TO '/home/john/Desktop/mfile_data_2017' (FORMAT CSV, HEADER);
EOF

