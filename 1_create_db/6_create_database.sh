#!/bin/bash

gcloud sql databases create $DATABASE_NAME --instance=$INSTANCE_NAME
#[--charset=CHARSET] [--collation=COLLATION]