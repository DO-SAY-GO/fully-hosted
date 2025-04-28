#!/bin/bash

curl -L \
  -X POST \
  -H "Accept: application/vnd.github+json" \
  -H "Authorization: Bearer $xp" \
  -H "X-GitHub-Api-Version: 2022-11-28" \
  -H "Content-Type': 'application/json" \
  https://api.github.com/repos/do-say-go/fully-hosted/actions/workflows/backend-api.yaml/dispatches \
  -d '{"ref":"main","inputs":{"name":"o0101","message":"What ??!? Does this really host a full stack SQLite app on GitHub Pages/Actions only?!?!"}}'
