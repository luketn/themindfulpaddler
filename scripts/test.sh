#!/usr/bin/env bash

echo "Testing that the site is running..."
PAGE=$(curl "https://qualitymovement.org")

if [[ $PAGE == *"Quality Movement"* ]]
then
  echo "
--------
Success!
--------

Result:
"$PAGE
  exit 0
else
  echo "
-----
FAIL!
-----

Result:
"$PAGE
  exit 1
fi
