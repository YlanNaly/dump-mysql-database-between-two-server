#!/bin/bash

DIR="name_of_dump.sql"
KEY_DIR="/path/to/key.pem or something like that"
step_1="ssh -i $KEY_DIR hostname@server2"
PASSWORD="password"
COMPACT="--no-create-info"
SINGLE="--single-transaction"
QUICK="--quick"

$step_1 "mysqldump -u root -p'$PASSWORD' $COMPACT $SINGLE $QUICK database_name > $DIR"

echo "get data *** dump ...."
scp -i $KEY_DIR hostname@server2:/path/name/$DIR .
echo "done!"

echo "rm dump file on prod"
$step_1 "rm $DIR"

echo "all done!"
