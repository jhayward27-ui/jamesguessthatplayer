#!/usr/bin/env bash
set -euo pipefail

# Quick publish helper: auto-generates a commit message with timestamp.
# Usage:
#   ./quick-publish.sh

timestamp="$(date "+%Y-%m-%d %H:%M:%S")"
./publish.sh "Update project - ${timestamp}"
