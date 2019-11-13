#!/bin/bash

#export INSTANCE_CONNECTION_NAME=`gcloud sql instances describe myinstance | grep connectionName`

echo "INSTANCE_CONNECTION_NAME: " $INSTANCE_CONNECTION_NAME

# NAA. Mandatory for Cloud Run deploy
# explicit instance specification
./cloud_sql_proxy -verbose -dir=/cloudsql -instances=$INSTANCE_CONNECTION_NAME -credential_file $CREDENTIALS_FILE

# cloud sdk authentication with TCP
#./cloud_sql_proxy -instances=$INSTANCE_CONNECTION_NAME=tcp:5432