#!/bin/sh

git diff --name-only | grep -e '\(.*\).swift$' | while read filename; do
  # ref: https://github.com/yonaskolb/Mint/issues/112
  mint run swiftformat swiftformat "$(git rev-parse --show-toplevel)/$filename"
done
