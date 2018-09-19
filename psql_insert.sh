#!/usr/bin/env bash
echo "\copy $1 FROM '$2' WITH (FORMAT CSV, NULL '.', HEADER TRUE);" \
| psql -h $PSQL_HOST_OWENS -d owenslake -U airsci 



