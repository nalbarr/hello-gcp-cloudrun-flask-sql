#!/bin/bash

#gcloud services list --available | grep cloudbuild

SERVICE1=cloudbuild.googleapis.com
SERVICE2=run.googleapis.com
gcloud services enable $SERVICE1
gcloud services enable $SERVICE2
