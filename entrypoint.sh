#!/bin/sh

USER="${1:-admin}"
PASSWORD="${2:-admin}"
if [ "$#" -gt 2 ]; then
    shift
    shift
    EXTRA_ARGS="${@}"
fi
if [ ! -f /database.db ]; then
    /filebrowser config init $EXTRA_ARGS
    /filebrowser users add $USER $PASSWORD --locale fr --perm.admin
else
    if [ -n "$EXTRA_ARGS" ]; then
        /filebrowser config set $EXTRA_ARGS
    fi
fi

exec /filebrowser

