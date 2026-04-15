#!/usr/bin/env bash
set -euo pipefail

# One-command publish helper for this repo.
# Usage:
#   ./publish.sh "Your commit message"

if ! command -v git >/dev/null 2>&1; then
  echo "Error: git is not installed."
  exit 1
fi

if [[ ! -d ".git" ]]; then
  echo "Error: run this script from the repository root."
  exit 1
fi

if [[ -z "${1:-}" ]]; then
  echo "Usage: ./publish.sh \"Your commit message\""
  exit 1
fi

branch="$(git rev-parse --abbrev-ref HEAD)"
if [[ "$branch" != "main" ]]; then
  echo "Error: you are on '$branch'. Switch to 'main' before publishing."
  exit 1
fi

remote_url="$(git remote get-url origin 2>/dev/null || true)"
expected_https="https://github.com/jhayward27-ui/jamesguessthatplayer.git"
expected_ssh="git@github.com:jhayward27-ui/jamesguessthatplayer.git"

if [[ "$remote_url" != "$expected_https" && "$remote_url" != "$expected_ssh" ]]; then
  echo "Error: origin is '$remote_url'"
  echo "Expected '$expected_https' (or SSH equivalent)."
  exit 1
fi

if [[ -z "$(git status --porcelain)" ]]; then
  echo "Nothing to publish. Working tree is clean."
  exit 0
fi

message="$1"

echo "Staging all changes..."
git add -A

echo "Committing..."
git commit -m "$message"

echo "Pushing to origin/main..."
git push -u origin main

echo "Publish complete."
