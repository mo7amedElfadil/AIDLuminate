##!/bin/bash

# Variables
DB_USER="root"
DB_PASSWORD="root"
DB_NAME="aidluminate"

# Step 1: Switch to the postgres user and create a new PostgreSQL user with superuser privileges
sudo -u postgres psql <<EOF
-- Create the user 'root' with the password 'root'
CREATE USER $DB_USER WITH SUPERUSER PASSWORD '$DB_PASSWORD';

-- Step 2: Create the database 'aidluminate'
CREATE DATABASE $DB_NAME OWNER $DB_USER;

-- Grant all privileges on the database to the user
GRANT ALL PRIVILEGES ON DATABASE $DB_NAME TO $DB_USER;

EOF

# Step 3: Output success message
echo "PostgreSQL user '$DB_USER' and database '$DB_NAME' created successfully."

