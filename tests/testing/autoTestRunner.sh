#!/bin/dash

tempDir=$(mktemp -d)
deleteTempDir() {
  rm -rf "$tempDir"
}
trap deleteTempDir EXIT

cd ".."
PATH="$PATH:$(pwd)"
cd "testing"

count=51
for i in $(seq $count)
do
  # echo "$i"
  ./"refTests/case$i.sh" > "$tempDir/expected" 2>"$tempDir/expectedErr" 
  ./"implementationTests/case$i.sh" > "$tempDir/actual" 2>"$tempDir/actualErr" 

  if diff -q "$tempDir/expected" "$tempDir/actual" >/dev/null &&
    diff -q "$tempDir/expectedErr" "$tempDir/actualErr" >/dev/null; then
    echo "Test passed $i"
  # elif !(diff -q "$tempDir/expectedErr" "$tempDir/actualErr" >/dev/null); then
  #   echo "Test failed $i"
  #   echo
  #   echo "EXPECTED ERROR"
  #   cat "$tempDir/expectedErr"
  #   echo
  #   echo "ACTUAL ERROR"
  #   cat "$tempDir/actualErr"
  #   exit

  else
    echo "Test failed $i"
    echo
    echo "EXPECTED"
    echo
    cat "$tempDir/expected"
    echo
    echo "ACTUAL"
    echo
    cat "$tempDir/actual"
    echo
    
    # echo "Test failed $i"
    echo
    echo "EXPECTED ERROR"
    echo
    cat "$tempDir/expectedErr"
    echo
    echo "ACTUAL ERROR"
    echo
    cat "$tempDir/actualErr"
    echo
    exit

  fi
  # echo "EXPECTED"
  # cat "$tempDir/expected"
  # echo
  # exit
done