#!/bin/bash

#Working Directory
cd "$(dirname "$0")"

#Look at latest data
git fetch origin main

#Check if update needed
LOCAL=$(git rev-parse HEAD)
REMOTE=$(git rev-parse @{u})

if [ "$LOCAL" != "$REMOTE" ]; then
	echo "Update Avaliable, Pulling new code..."
	git pull origin main
	exit 0 # Update Complete
else
	echo "No changes on GitHub. Running latest version."
	exit 1 # Running Latest Version
fi

