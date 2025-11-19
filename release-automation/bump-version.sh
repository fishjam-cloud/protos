#!/bin/bash
set -e

# Usage: ./bump-version.sh <version>
VERSION="$1"
MIX_EXS="mix.exs"
README="README.md"
MARKER_VERSION="# project version - bump-version.sh"

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

# Update version in mix.exs (Version line follows MARKER_VERSION)
# - The substitution uses a regex that matches a literal `version: "`, then
#   three groups of digits separated by dots (e.g. `1.2.3`), and the closing
#   `"`. We capture the prefix and suffix and replace only the numeric part
#   with the value of the shell variable `$VERSION`, keeping the surrounding
#   text intact.
if grep -q "$MARKER_VERSION" "$MIX_EXS"; then
    sed -i.bak -E "/$MARKER_VERSION/{n;s/version: \"[0-9]+\.[0-9]+\.[0-9]+\"/version: \"$VERSION\"/;}" "$MIX_EXS"
    rm -f "$MIX_EXS.bak"
else
    echo "Error: Marker '$MARKER_VERSION' not found in $MIX_EXS. Please add it above the version line."
    exit 1
fi

# Confirm replacement
if ! grep -q "version: \"$VERSION\"" "$MIX_EXS"; then
    echo "Error: Failed to update version in $MIX_EXS via regex"
    exit 1
fi
echo "Updated $MIX_EXS to $VERSION"

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
