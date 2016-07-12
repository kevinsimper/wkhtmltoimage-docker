#!/bin/bash
set -e
echo "Starting"

xvfb-run wkhtmltoimage "$@"
