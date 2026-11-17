#!/usr/bin/env bash
# Setup for Ubuntu/WSL: JDK + Ant (Dockerfile uses JDK 23; JDK 17+ assumed enough, adjust if build fails).
set -euo pipefail
cd "$(dirname "$0")"
sudo apt-get update
sudo apt-get install -y default-jdk ant maven python3
ant jar
echo "Run: java -jar build/jar/aarithmetic.jar int add 1 2"
