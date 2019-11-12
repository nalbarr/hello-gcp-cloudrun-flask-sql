#!/bin/bash

gcloud sql databases delete $DATABASE_NAME --instance=$INSTANCE_NAME
gcloud sql instances delete $INSTANCE_NAME

rm ./cloud_sql_proxy