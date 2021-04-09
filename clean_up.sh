#!/bin/bash

set -e

GLOBIGNORE=LICENSE:clean_up.sh:.git

rm -fr *

unset GLOBIGNORE
