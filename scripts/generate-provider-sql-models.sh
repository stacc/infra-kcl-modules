#!/bin/bash

# Set variables
REPO_URL="https://github.com/crossplane-contrib/provider-sql"
RAW_BASE_URL="https://raw.githubusercontent.com/crossplane-contrib/provider-sql/master/package/crds"
DEST_DIR="io/crossplane-contrib/sql"

rm -rf "io/crossplane-contrib/sql"

# Create destination directory if it doesn't exist
mkdir -p "$DEST_DIR"

TEMP_DIR=$(mktemp -d)

# Get list of YAML files from GitHub
FILES=$(curl -s https://api.github.com/repos/crossplane-contrib/provider-sql/contents/package/crds | jq -r '.[].download_url' | grep ".yaml$")

# Process each file

for FILE_URL in $FILES; do

  # Download file
  FILE_NAME=$(basename "$FILE_URL")

  echo "Processing $FILE_NAME"

  # Download the file
  curl -sL "$FILE_URL" -o "$TEMP_DIR/$FILE_NAME"

  # Run kcl import and save the output
  kcl import -m crd "$TEMP_DIR/$FILE_NAME" -o "$TEMP_DIR"

done

rm -rf $TEMP_DIR/models/k8s/
rm $TEMP_DIR/models/kcl.mod
mv $TEMP_DIR/models/* $DEST_DIR
# Cleanup temporary directory
rm -rf $TEMP_DIR

echo "Processing complete. Output stored in $DEST_DIR"
