#!/usr/bin/env bash
set -euo pipefail

docker build -t tp3 .
docker rm -f tp3 >/dev/null 2>&1 || true
docker run -d --name tp3 -p 8082:80 tp3
for attempt in {1..20}; do
  if curl -fsS http://127.0.0.1:8082/ 2>/dev/null | grep -q 'Welcome BDCC'; then
    exit 0
  fi
  sleep 1
done
echo 'La page ne répond pas sur le port 8082.' >&2
exit 1
