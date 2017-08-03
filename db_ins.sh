#!/usr/bin/env bash
echo "\copy field_data.twb2_qa_survey FROM '~/Desktop/test.csv' WITH (FORMAT CSV, NULL '---');" \
| psql -h $PSQL_HOST_OWENS -d owenslake -U airsci 



