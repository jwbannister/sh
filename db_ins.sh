#!/usr/bin/env bash
echo "\copy field_data.twb2_qa_survey FROM '~/Desktop/TwB2_surface_data_2016-12.csv' WITH (FORMAT CSV, NULL '---', HEADER);" \
| psql -h airdbo1.cwxikzzkese5.us-west-2.rds.amazonaws.com -d owenslake -U airsci 



