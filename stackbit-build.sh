#!/usr/bin/env bash

set -e
set -o pipefail
set -v

if [[ -z "${STACKBIT_API_KEY}" ]]; then
    echo "WARNING: No STACKBIT_API_KEY environment variable set, skipping stackbit-pull"
else
    npx @stackbit/stackbit-pull --stackbit-pull-api-url=https://e299b818.ngrok.io/pull/5d73cb59d5eaf00cc7349820 
fi
./ssg-build.sh

