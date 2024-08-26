#!/bin/sh

echo "127.0.0.1 kazokada.42.fr" >> /etc/hosts
exec "$@"