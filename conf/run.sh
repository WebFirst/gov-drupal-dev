#!/bin/bash

# Ideally this would  be in a separate container
exec /bin/bash -c "mailcatcher --smtp-port 1025 --http-ip=0.0.0.0 -f" &

# Start web server with gov-drupal image script.
exec /run-httpd.sh
