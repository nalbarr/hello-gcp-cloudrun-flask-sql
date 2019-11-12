# hello-gcp-cloudrun-flask-sql
hello-gcp-cloudrun-flask-sql

- NOTE: ROOT_DIR assumes root directory of project code
- NOTE: All following bash scripts assume `source <script.sh>`
- NOTE: Most "delete" operations require manual confirmation

## Initialize Environment
- (optional) _set_venv.sh (to enforce clean virtual env)
- 0_init.sh
- z_dump-env.sh (to confirm enviroment)

## Create database (and local testing)
- cd $ROOT_DIR/1_create_db
  - 1_create_cloud_sql.sh
  - 2_download_proxy.sh
  - 3_create_sql_user.sh
  - NOTE:  create another terminal session prior to task #4; to run local proxy
  - 4_run_cloud_sql_proxy.sh
  - 5_create_database.sh
  - 6_connect_sql.sh
  - (optional) 7_cleanup.sh

## Local testing of Flask app
- cd $ROOT_DIR/src 
  - 0_set_env.sh (will configure virtual environment)
  - 1_create_service_account.sh
  - 2_download_proxy.sh
  - NOTE: skip explicit instance specification as per references to avoid additional service account and credential file; HOWEVER - should to this properly in PROD.
  - 3_create_cloudsql_dir.sh
  - 4_run_cloud_sql_proxy.sh
  - python3 main.py
  - ... debug
  
## Containerize Flask app and deploy to Cloud Run
- NOTE: must have proper PROJECT service account with proper SQL roles
- cd $ROOT_DIR/2_cloud_flask_sql
  - 1_gcloud_enable_services.sh
  - 2_gcloud_submit_build.sh
  - 3_gcloud_run.sh
  - 4_gcloud_service_update_sql.sh
  - 5_gcloud_images_list.sh
  - 6_gcloud_delete_image.sh
  - 7_gcloud_delete_service.sh

## Cleanup
- cd $ROOT_DIR/2_cloud_flask_sql
  - 5_gcloud_delete_image.sh
  - 6_gcloud_delete_service.sh

- cd $ROOT_DIR/1_create_db
  - 7_cleanup.sh

### References
- https://github.com/GoogleCloudPlatform/python-docs-samples/tree/master/cloud-sql/postgres/sqlalchemy
- https://cloud.google.com/sql/docs/postgres/create-manage-databases
- https://cloud.google.com/sql/docs/postgres/connect-app-engine
- https://cloud.google.com/sql/docs/postgres/connect-external-app#4_if_required_by_your_authentication_method_create_a_service_account
- https://cloud.google.com/sql/docs/postgres/connect-run
- https://codelabs.developers.google.com/codelabs/connecting-to-cloud-sql/
- NOTE: NAA.  Below has more current libraries in requirements.txt?  Just port from GAE to Cloud run.
- https://cloud.google.com/appengine/docs/flexible/python/using-cloud-sql-postgres
