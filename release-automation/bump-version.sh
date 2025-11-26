#!/bin/bash
set -e

# Usage: ./bump-version.sh <version>
VERSION="$1"
MIX_EXS="mix.exs"
README="README.md"

if [ -z "$VERSION" ]; then
    echo "Usage: $0 <version>"
    exit 1
fi

# Navigate to fishjam_protos directory
cd fishjam_protos

BRANCH_NAME="release-$VERSION"
git checkout -b "$BRANCH_NAME"

if [ ! -f "$MIX_EXS" ]; then
    echo "Error: $MIX_EXS not found in repo root"
    exit 1
fi

# Search and replace `@release_version "<version>"` to new version
if grep -q "@release_version" "$MIX_EXS"; then
    sed -i.bak -E 's/(@release_version[[:space:]]*")[^"]*/\1'"$VERSION"'/' "$MIX_EXS"
    rm -f "$MIX_EXS.bak"
else
    echo "Error: @release_version line not found in $MIX_EXS"
    exit 1
fi

# Confirm replacement: accept either a literal version string or the module attribute
if grep -q "@release_version \"$VERSION\"" "$MIX_EXS"; then
    echo "Updated $MIX_EXS to $VERSION"
else
    echo "Error: Failed to update version in $MIX_EXS via regex"
    exit 1
fi

# Update version in README.md if present
if [ -f "$README" ]; then
    sed -i.bak -E "s/:fishjam_protos, \"~> [0-9]+\.[0-9]+\.[0-9]+\"/:fishjam_protos, \"~> $VERSION\"/" "$README"
    rm -f "$README.bak"
    echo "Updated $README to version $VERSION"
else
    echo "⚠️ $README not found, skipping README version update"
fi

echo "✅ Version bump complete for $VERSION"
echo "BRANCH_NAME:$BRANCH_NAME"
