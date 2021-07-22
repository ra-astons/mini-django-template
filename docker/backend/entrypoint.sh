#!/bin/bash
# We need to use bash because of the use of the /dev/tcp device

if [ ! -e "requirements/dev.txt" ]; then
    pip-compile requirements/dev.in
fi
if [ ! -e "requirements/test.txt" ]; then
    pip-compile requirements/test.in
fi

# Wait for the db server to be ready, then run the fixturize command
echo -n "Waiting for PostgreSQL:"
while ! (echo > /dev/tcp/db/5432) >/dev/null 2>&1; do
    echo -n '.'; sleep 1;
done;

./manage.py migrate

exec "${@}"
