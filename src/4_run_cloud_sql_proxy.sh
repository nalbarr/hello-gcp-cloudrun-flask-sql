#!/bin/bash

#export INSTANCE_CONNECTION_NAME=`gcloud sql instances describe myinstance | grep connectionName`

echo "INSTANCE_CONNECTION_NAME: " $INSTANCE_CONNECTION_NAME

# explicit instance specification
#./cloud_sql_proxy -dir-/cloudsql -instances=$INSTANCE_CONNECTION_NAME=tcp:5432

# cloud sdk authentication
./cloud_sql_proxy -instances=$INSTANCE_CONNECTION_NAME=tcp:5432