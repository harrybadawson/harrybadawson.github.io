#!/usr/bin/env bash
# Preview the site locally at http://localhost:4173
# Nothing here is public — this serves files from your own machine only.
cd "$(dirname "$0")" || exit 1
echo "Preview running at  http://localhost:4173"
echo "Press Ctrl+C to stop."
python3 -m http.server 4173
