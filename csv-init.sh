#!/usr/bin/env bash


# ------------------------------------------------------------------------
# Creates the csv database and respective user. This database location
# and access credentials are defined on the environment variables
# ------------------------------------------------------------------------
set -e

set -e

psql -v ON_ERROR_STOP=1 --username "${POSTGRES_USER}" <<-EOSQL
  CREATE DATABASE skeyechart_csv_uploads;
EOSQL
