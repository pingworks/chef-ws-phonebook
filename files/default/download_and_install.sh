#!/bin/bash

BRANCH=$1
BUNDLE=$2
PKGS=$3

if [ -z "$BRANCH" -o -z "$BUNDLE" -o -z "$PKGS" ]; then
  echo "Usage: $0 <branch> <bundle> <pkgs>"
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
cd bundle/artifacts/
for pkg in $PKGS; do
  sudo dpkg -i ${pkg}_*.deb
done
