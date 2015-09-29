#!/bin/bash

BRANCH=$1
BUNDLE=$2

if [ -z "$BRANCH" -o -z "$BUNDLE" ]; then
  echo "Usage: $0 <branch> <bundle>"
  exit 1
fi

set -e

rm -f full-bundle_*.tar.gz
wget -O full-bundle_${BUNDLE}.tar.gz \
  --no-check-certificate \
  http://repo/repo/${BRANCH}/${BUNDLE}/bundles/full-bundle_${BUNDLE}.tar.gz
rm -rf bundle
mkdir bundle
tar xvfz full-bundle_${BUNDLE}.tar.gz -C bundle
