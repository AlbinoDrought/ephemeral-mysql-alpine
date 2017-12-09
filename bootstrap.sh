#!/bin/sh

_term() {
    echo "Escalating to SIGKILL..."
    kill -9 "$child"
}

trap _term SIGTERM

echo "Starting child..."
/scripts/startup.sh &
child=$!
wait "$child"

