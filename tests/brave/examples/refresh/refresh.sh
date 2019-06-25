#!/usr/bin/env bash
{ set +x; } 2>/dev/null

url="$(brave url)" || exit
( set -x; brave refresh "$url" ) || exit

( set -x; sleep 5 )
urls="$(brave urls)" || exit
IFS=$'\n';set $urls
( set -x; brave refresh "$@" ) || exit
