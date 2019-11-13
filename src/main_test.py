import os
import sqlalchemy


def xtest_connect():
    # NAA. Re-use outer env vars
    db_user = os.environ.get("SQL_USER")
    db_pass = os.environ.get("SQL_PASSWORD")
    db_name = os.environ.get("DATABASE_NAME")
    cloud_sql_connection_name = os.environ.get("INSTANCE_CONNECTION_NAME")

    print('db_user: ' + str(db_user))
    print('db_pass: ' + str(db_pass))
    print('db_name: ' + str(db_name))
    print('cloud_sql_connection_name: ' + str(cloud_sql_connection_name))
    db = sqlalchemy.create_engine(
        'postgresql+pg8000://postgres:postgres@localhost/mydb')

    with db.connect() as conn:
        conn.execute(
            "CREATE TABLE IF NOT EXISTS votes "
            "( vote_id SERIAL NOT NULL, time_cast timestamp NOT NULL, "
            "candidate VARCHAR(6) NOT NULL, PRIMARY KEY (vote_id) );"
        )


def test_connect2():
    # NAA. Re-use outer env vars
    db_user = os.environ.get("SQL_USER")
    db_pass = os.environ.get("SQL_PASSWORD")
    db_name = os.environ.get("DATABASE_NAME")
    cloud_sql_connection_name = os.environ.get("INSTANCE_CONNECTION_NAME")

    print('db_user: ' + str(db_user))
    print('db_pass: ' + str(db_pass))
    print('db_name: ' + str(db_name))
    print('cloud_sql_connection_name: ' + str(cloud_sql_connection_name))
    db = sqlalchemy.create_engine(
        sqlalchemy.engine.url.URL(
            drivername='postgres+pg8000',
            username=db_user,
            password=db_pass,
            database=db_name,
            query={
                'unix_sock': '/cloudsql/{}/.s.PGSQL.5432'.format(
                    cloud_sql_connection_name)
            }
        ),
        pool_size=5,
        max_overflow=2,
        pool_timeout=30,
        pool_recycle=1800,
    )
    with db.connect() as conn:
        conn.execute(
            "CREATE TABLE IF NOT EXISTS votes "
            "( vote_id SERIAL NOT NULL, time_cast timestamp NOT NULL, "
            "candidate VARCHAR(6) NOT NULL, PRIMARY KEY (vote_id) );"
        )