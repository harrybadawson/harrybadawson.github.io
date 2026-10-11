#!/usr/bin/env bash
# Preview the site locally at http://localhost:4173
# Nothing here is public. This serves files from your own machine only.

cd "$(dirname "$0")" || exit 1
PORT=4173

existing=$(ss -ltnp 2>/dev/null | grep ":$PORT " | grep -oP 'pid=\K[0-9]+' | head -1)

if [ -n "$existing" ]; then
  echo "Something is already serving port $PORT (pid $existing)."
  echo
  echo "If that is an old preview, stop it with"
  echo "    kill $existing"
  echo "then run this script again. Otherwise just open the link below."
  echo
  echo "    http://localhost:$PORT"
  exit 0
fi

echo "Preview running at  http://localhost:$PORT"
echo "Press Ctrl+C to stop."
exec python3 -m http.server "$PORT"
