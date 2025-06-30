#!/bin/dash

# tempDir=$(mktemp -d)

# deleteTempDir() {
#   rm -rf "$tempDir"
# }
# trap deleteTempDir EXIT


for filename in "$1"case*; do
  echo "$filename"
  sed -iE 's/^2041 //g' "$filename"
  # sed -iE 's/^2041 //g' filename
done