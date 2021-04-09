#!/bin/bash

set -e

# Remove all files/directories except .git/, LICENSE, and clean_up.sh.
GLOBIGNORE=.git:LICENSE:clean_up.sh

rm -fr *

unset GLOBIGNORE

git add . && git commit -m "CLEAN UP!" && git push -f

# Remove both local & remote tags.
git fetch

git push origin --delete $(git tag -l)

git tag -d $(git tag -l | head -n 100)
