#!/bin/bash

gcloud sql users set-password $SQL_USER --instance=$INSTANCE_NAME \
       --host nohost \
       --password=$SQL_PASSWORD