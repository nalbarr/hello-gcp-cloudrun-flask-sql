#!/bin/bash

DEPLOY_DIR=../src
gcloud builds submit $DEPLOY_DIR --tag $HOSTNAME/$PROJECT/$IMAGE_TAG