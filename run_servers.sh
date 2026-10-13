#!/bin/bash
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
pkill -f "node.*server.js" || true
pkill -f "vite" || true

cd "$DIR/backend" && node server.js &
cd "$DIR/frontend-web" && npm run dev &
cd "$DIR/frontend-admin" && npm run dev &

