#!/usr/bin/env bash

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

# Select the appropriate binary based on the OS
if [[ "$OSTYPE" == "linux-gnu"* ]]; then
  "$SCRIPT_DIR"/prototool-Linux-x86_64 "$@"
elif [[ "$OSTYPE" == "darwin"* ]]; then
  "$SCRIPT_DIR"/prototool-Darwin-x86_64 "$@"
else
  echo "No prototool binary provided by pre-commit-prototool for this operating system.";
  exit 1;
fi
