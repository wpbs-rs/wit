#!/bin/sh
set -e

cd "$(dirname "$0")"

find . -name wkg.toml | while IFS= read -r f; do
  (cd "$(dirname "$f")" && wkg fetch .)
done
