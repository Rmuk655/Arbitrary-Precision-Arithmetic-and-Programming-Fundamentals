#!/usr/bin/env bash
# Setup for Ubuntu/WSL. Python scripts use only the standard library (no requirements.txt needed).
set -euo pipefail
cd "$(dirname "$0")"
sudo apt-get update
sudo apt-get install -y build-essential make ocaml opam inotify-tools gawk bc wamerican python3
make -C c-linking-and-build-systems
echo "See README 'Running things' for how to run each folder."
