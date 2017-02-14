#!/bin/bash
psql service=$1 -x -c "SELECT * FROM pg_stat_activity ORDER BY client_addr ASC, 
query_start ASC;"
