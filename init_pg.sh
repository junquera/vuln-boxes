#!/bin/bash
set -e

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL
    CREATE USER shellshock WITH password 'shellshock';
    CREATE DATABASE shellshock;
    GRANT ALL PRIVILEGES ON DATABASE shellshock TO shellshock;
EOSQL

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "shellshock" <<-EOSQL
  create table users (username varchar, password varchar);
  insert into users (username, password) VALUES ('pepito', 'perez');
  insert into users (username, password) VALUES ('juanito', 'lopez');
  insert into users (username, password) VALUES ('flag', 'pivoting_with_the_toaster');
  insert into users (username, password) VALUES ('fulanito', 'de tal');
EOSQL
