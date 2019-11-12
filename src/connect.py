import os
import psycopg2

db_user = os.environ.get("SQL_USER")
db_pass = os.environ.get("SQL_PASSWORD")
db_name = os.environ.get("DATABASE_NAME")
cloud_sql_connection_name = os.environ.get("INSTANCE_CONNECTION_NAME")

# conn = psycopg2.connect(user=DATABASE_USER, password=PASSWORD,
#                       host='localhost', port='5432')

conn = psycopg2.connect(user=db_user, password=db_pass,
                        host='localhost', port='5432')