#!/bin/bash

#psql "host=127.0.0.1 port=5432 sslmode=disable dbname=$DATABASE_NAME user=$SQL_USER"

#./cloud_sql_proxy -verbose -dir=/cloudsql -instances=$INSTANCE_CONNECTION_NAME=tcp:5432 -credential_file $CREDENTIALS_FILE & 
psql "host=127.0.0.1 port=5432 sslmode=disable dbname=$DATABASE_NAME user=$SQL_USER"