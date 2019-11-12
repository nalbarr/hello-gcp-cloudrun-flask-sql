#!/bin/bash

#gcloud services list --available | grep cloudbuild

for service in cloudbuild.googleapis.com \
    run.googleapis.com \
    sqladmin.googleapis.com
do
    gcloud services enable $service
done