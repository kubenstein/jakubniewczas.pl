#!/bin/bash

LOCAL_REPO_DIR='/tmp/starboard/projects/jakubniewczas.pl/' \
SYNCING_INTERVAL=60 \
PORT=9000 \
REPO_URL=$(git remote show dropbox | grep 'Fetch URL' | cut -d' ' -f5) \
starboard