#!/bin/bash

# must run proxy before
#psql "host=127.0.0.1 dbname=postgres user=postgres"
psql "host=127.0.0.1 dbname=$DATABASE_NAME user=$SQL_USER"