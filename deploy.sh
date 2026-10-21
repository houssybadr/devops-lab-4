#!/usr/bin/env bash
set -eu

docker build -t tp3 .
docker rm -f tp3 >/dev/null 2>&1 || true
docker run -d --name tp3 -p 8082:80 tp3
curl -fsS http://127.0.0.1:8082/ | grep -q 'Welcome BDCC'
