#!/bin/bash
PROJECT="$1"
read -r -d '' MARKDOWN <<-EOF
[![Continuous Integration](https://github.com/__REPLACE_USER_REPO__/actions/workflows/ci.yml/badge.svg?event=push)](https://github.com/__REPLACE_USER_REPO__/actions/workflows/ci.yml)
[![GitHub issues](https://img.shields.io/github/issues-raw/__REPLACE_USER_REPO__?style=plastic)](https://github.com/__REPLACE_USER_REPO__/issues)
[![GitHub pull requests](https://img.shields.io/github/issues-pr-raw/__REPLACE_USER_REPO__?style=plastic)](https://github.com/__REPLACE_USER_REPO__/pulls)
[![GitHub](https://img.shields.io/github/license/__REPLACE_USER_REPO__?style=plastic)](/LICENSE)
[![GitHub release (latest SemVer including pre-releases)](https://img.shields.io/github/v/release/__REPLACE_USER_REPO__?include_prereleases&style=plastic)](https://github.com/__REPLACE_USER_REPO__/releases)
EOF

RESULT=${MARKDOWN//__REPLACE_USER_REPO__/"${PROJECT#/%/}"}
echo "$RESULT"
