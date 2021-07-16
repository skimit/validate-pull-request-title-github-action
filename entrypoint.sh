#!/bin/sh -l

set -e

# When updating this RegEx, please, keep in mind that Bash only supports POSIX. I.e.: Bash doesn't support \d, so you need to explicitly use [0-9] or [[:digit:]]
echo "$1" | grep -oE '^(fix|feature|breaking-change)(\/)?([A-Z]*-[^-]*[[:digit:]])-?.*' -

[ $? -eq 0 ] && exit 0 || exit 1
