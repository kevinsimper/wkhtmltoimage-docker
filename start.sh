#!/bin/bash
set -e
echo "Starting"

/wkhtmltox/bin/wkhtmltoimage "$@"
