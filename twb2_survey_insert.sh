#!/usr/bin/env bash
echo "\copy field_data.twb2_qa_survey FROM '~/Desktop/$1' WITH (FORMAT CSV, NULL '.', HEADER TRUE);" \
| psql -h $PSQL_HOST_OWENS -d owenslake -U airsci 



