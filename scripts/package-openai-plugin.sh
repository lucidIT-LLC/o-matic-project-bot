#!/bin/sh
set -eu

repo_root=$(CDPATH= cd -- "$(dirname -- "$0")/.." && pwd)
output=${1:-"$repo_root/omatic-project-bot-openai.zip"}
mkdir -p "$(dirname -- "$output")"
output=$(CDPATH= cd -- "$(dirname -- "$output")" && pwd)/$(basename -- "$output")

command -v zip >/dev/null 2>&1 || {
  echo "zip is required to build the OpenAI plugin archive" >&2
  exit 1
}

cd "$repo_root/hosts/openai"
zip -qr "$output" .
echo "$output"
