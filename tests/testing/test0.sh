#!/bin/dash

tempDir=$(mktemp -d)
deleteTempDir() {
    rm -rf "$tempDir"
}
trap deleteTempDir EXIT

PATH="$PATH:$(pwd)"


touch "$tempDir/expectedStdout" 
touch "$tempDir/actualStdout"
touch "$tempDir/expectedStderr" 
touch "$tempDir/actualStderr"

# expected
rm -rf '.grip' 
2041 grip-init > "$tempDir/expectedStdout" 2>"$tempDir/expectedStderr"
echo "$?" > "$tempDir/expectedStdout"
echo hi > hi
2041 grip-add hi > "$tempDir/expectedStdout" 2>"$tempDir/expectedStderr"
echo "$?" > "$tempDir/expectedStdout"
2041 grip-commit -m initial  > "$tempDir/expectedStdout" 2>"$tempDir/expectedStderr"
echo "$?" > "$tempDir/expectedStdout"
echo made a new branch here
2041 grip-branch new > "$tempDir/expectedStdout" 2>"$tempDir/expectedStderr"
echo "$?" > "$tempDir/expectedStdout"
rm -rf hi
2041 grip-add hi > "$tempDir/expectedStdout" 2>"$tempDir/expectedStderr"
echo "$?" > "$tempDir/expectedStdout"
2041 grip-commit -m emptyCommit  > "$tempDir/expectedStdout" 2>"$tempDir/expectedStderr"
echo "$?" > "$tempDir/expectedStdout"
echo hi > hi
2041 grip-add hi > "$tempDir/expectedStdout" 2>"$tempDir/expectedStderr"
echo "$?" > "$tempDir/expectedStdout"
rm -rf hi
echo current commit details
2041 grip-log > "$tempDir/expectedStdout" 2>"$tempDir/expectedStderr"
echo "$?" > "$tempDir/expectedStdout"
cat hi
2041 grip-show :hi > "$tempDir/expectedStdout" 2>"$tempDir/expectedStderr"
echo "$?" > "$tempDir/expectedStdout"
2041 grip-show 1:hi > "$tempDir/expectedStdout" 2>"$tempDir/expectedStderr"
echo "$?" > "$tempDir/expectedStdout"
echo checked out to new branch here
2041 grip-checkout new  > "$tempDir/expectedStdout" 2>"$tempDir/expectedStderr"
echo "$?" > "$tempDir/expectedStdout"
echo target commit details
2041 grip-log > "$tempDir/expectedStdout" 2>"$tempDir/expectedStderr"
echo "$?" > "$tempDir/expectedStdout"
cat hi
2041 grip-show :hi > "$tempDir/expectedStdout" 2>"$tempDir/expectedStderr"
echo "$?" > "$tempDir/expectedStdout"
2041 grip-show 0:hi > "$tempDir/expectedStdout" 2>"$tempDir/expectedStderr"
echo "$?" > "$tempDir/expectedStdout"
rm -rf '.grip'
rm -rf hi

# actual
rm -rf '.grip' 
grip-init > "$tempDir/actualStdout" 2>"$tempDir/actualStderr"
echo "$?" > "$tempDir/actualStdout"
echo hi > hi
grip-add hi > "$tempDir/actualStdout" 2>"$tempDir/actualStderr"
echo "$?" > "$tempDir/actualStdout"
grip-commit -m initial  > "$tempDir/actualStdout" 2>"$tempDir/actualStderr"
echo "$?" > "$tempDir/actualStdout"
echo made a new branch here
grip-branch new > "$tempDir/actualStdout" 2>"$tempDir/actualStderr"
echo "$?" > "$tempDir/actualStdout"
rm -rf hi
grip-add hi > "$tempDir/actualStdout" 2>"$tempDir/actualStderr"
echo "$?" > "$tempDir/actualStdout"
grip-commit -m emptyCommit  > "$tempDir/actualStdout" 2>"$tempDir/actualStderr"
echo "$?" > "$tempDir/actualStdout"
echo hi > hi
grip-add hi > "$tempDir/actualStdout" 2>"$tempDir/actualStderr"
echo "$?" > "$tempDir/actualStdout"
rm -rf hi
echo current commit details
grip-log > "$tempDir/actualStdout" 2>"$tempDir/actualStderr"
echo "$?" > "$tempDir/actualStdout"
cat hi
grip-show :hi > "$tempDir/actualStdout" 2>"$tempDir/actualStderr"
echo "$?" > "$tempDir/actualStdout"
grip-show 1:hi > "$tempDir/actualStdout" 2>"$tempDir/actualStderr"
echo "$?" > "$tempDir/actualStdout"
echo checked out to new branch here
grip-checkout new  > "$tempDir/actualStdout" 2>"$tempDir/actualStderr"
echo "$?" > "$tempDir/actualStdout"
echo target commit details
grip-log > "$tempDir/actualStdout" 2>"$tempDir/actualStderr"
echo "$?" > "$tempDir/actualStdout"
cat hi
grip-show :hi > "$tempDir/actualStdout" 2>"$tempDir/actualStderr"
echo "$?" > "$tempDir/actualStdout"
grip-show 0:hi > "$tempDir/actualStdout" 2>"$tempDir/actualStderr"
echo "$?" > "$tempDir/actualStdout"
rm -rf '.grip'
rm -rf hi

if diff -q "$tempDir/expected" "$tempDir/actual" >/dev/null &&
    diff -q "$tempDir/expectedErr" "$tempDir/actualErr" >/dev/null; then
    echo "Test passed 1"
else
    echo "Test failed 1"
fi