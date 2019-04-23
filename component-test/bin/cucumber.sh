#!/usr/bin/env bash
HERE="$(dirname "$(readlink -f "$0")")"

set -e

cd "$HERE"
rm -rf ../test-reports
mkdir -p ../test-reports

cd "$HERE"/..
echo "Running Cucumber Tests from $(pwd)..."
/usr/local/bundle/bin/cucumber ./features/ "$@"
