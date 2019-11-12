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
  - 5_connect_sql.sh
  - 6_create_database.sh
  - (optional) 7_cleanup.sh

## Local testing of Flask app
- cd $ROOT_DIR/src 
  - 0_set_env.sh (will configure virtual environment)
  - python3 main.py
  
## Containerize Flask app and deploy to Cloud Run
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
