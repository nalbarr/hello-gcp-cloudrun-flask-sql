#!/bin/bash

gcloud sql users set-password postgres --instance=$INSTANCE_NAME \
       --host nohost \
       --password=$SQL_PASSWORD