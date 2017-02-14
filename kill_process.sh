#!/bin/bash
psql service=$1 -c "SELECT pg_cancel_backend($2);"
