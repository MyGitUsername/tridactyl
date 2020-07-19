#!/bin/sh
cd ${0%/*}/..
if ! [ -x "$(command -v shellcheck)" ]; then
	GLOBIGNORE="node_modules" shellcheck -e2012 **/*.sh
else
	echo "Warning: shellcheck is not installed, skipping shell scripts"
fi
yarn run lint
"$(yarn bin)/eslint" --ext .ts
