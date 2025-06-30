#!/bin/dash 
# All of grip-branch testing

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
2041 grip-branch new > "$tempDir/expectedStdout" 2>"$tempDir/expectedStderr"
echo "$?" > "$tempDir/expectedStdout" 2>"$tempDir/expectedStderr"
2041 grip-init > "$tempDir/expectedStdout" 2>"$tempDir/expectedStderr"
echo "$?" > "$tempDir/expectedStdout" 2>"$tempDir/expectedStderr"
2041 grip-branch new > "$tempDir/expectedStdout" 2>"$tempDir/expectedStderr"
echo "$?" > "$tempDir/expectedStdout" 2>"$tempDir/expectedStderr"
echo hi > hi
2041 grip-branch new > "$tempDir/expectedStdout" 2>"$tempDir/expectedStderr"
echo "$?" > "$tempDir/expectedStdout" 2>"$tempDir/expectedStderr"
2041 grip-add hi > "$tempDir/expectedStdout" 2>"$tempDir/expectedStderr"
echo "$?" > "$tempDir/expectedStdout" 2>"$tempDir/expectedStderr"
2041 grip-branch new > "$tempDir/expectedStdout" 2>"$tempDir/expectedStderr"
echo "$?" > "$tempDir/expectedStdout" 2>"$tempDir/expectedStderr"
2041 grip-commit -m initial > "$tempDir/expectedStdout" 2>"$tempDir/expectedStderr"
echo "$?" > "$tempDir/expectedStdout" 2>"$tempDir/expectedStderr"
2041 grip-branch new > "$tempDir/expectedStdout" 2>"$tempDir/expectedStderr"
echo "$?" > "$tempDir/expectedStdout" 2>"$tempDir/expectedStderr"
2041 grip-branch -d trunk > "$tempDir/expectedStdout" 2>"$tempDir/expectedStderr"
echo "$?" > "$tempDir/expectedStdout" 2>"$tempDir/expectedStderr"
2041 grip-checkout new > "$tempDir/expectedStdout" 2>"$tempDir/expectedStderr"
echo "$?" > "$tempDir/expectedStdout" 2>"$tempDir/expectedStderr"
2041 grip-branch -d trunk > "$tempDir/expectedStdout" 2>"$tempDir/expectedStderr"
echo "$?" > "$tempDir/expectedStdout" 2>"$tempDir/expectedStderr"
2041 grip-branch -d new > "$tempDir/expectedStdout" 2>"$tempDir/expectedStderr"
echo "$?" > "$tempDir/expectedStdout" 2>"$tempDir/expectedStderr"
2041 grip-branch -d doesNotExist > "$tempDir/expectedStdout" 2>"$tempDir/expectedStderr"
echo "$?" > "$tempDir/expectedStdout" 2>"$tempDir/expectedStderr"
2041 grip-branch > "$tempDir/expectedStdout" 2>"$tempDir/expectedStderr"
echo "$?" > "$tempDir/expectedStdout" 2>"$tempDir/expectedStderr"
2041 grip-branch -d > "$tempDir/expectedStdout" 2>"$tempDir/expectedStderr"
echo "$?" > "$tempDir/expectedStdout" 2>"$tempDir/expectedStderr"
2041 grip-branch brnach branch > "$tempDir/expectedStdout" 2>"$tempDir/expectedStderr"
echo "$?" > "$tempDir/expectedStdout" 2>"$tempDir/expectedStderr"
2041 grip-branch brnach branch branch > "$tempDir/expectedStdout" 2>"$tempDir/expectedStderr"
echo "$?" > "$tempDir/expectedStdout" 2>"$tempDir/expectedStderr"
2041 grip-branch trunk > "$tempDir/expectedStdout" 2>"$tempDir/expectedStderr"
echo "$?" > "$tempDir/expectedStdout" 2>"$tempDir/expectedStderr"
2041 grip-branch new > "$tempDir/expectedStdout" 2>"$tempDir/expectedStderr"
echo "$?" > "$tempDir/expectedStdout" 2>"$tempDir/expectedStderr"
echo newFile > nf
2041 grip-add newFile > "$tempDir/expectedStdout" 2>"$tempDir/expectedStderr"
echo "$?" > "$tempDir/expectedStdout" 2>"$tempDir/expectedStderr"
2041 grip-commit -a -m newCommit > "$tempDir/expectedStdout" 2>"$tempDir/expectedStderr"
echo "$?" > "$tempDir/expectedStdout" 2>"$tempDir/expectedStderr"
2041 grip-checkout trunk > "$tempDir/expectedStdout" 2>"$tempDir/expectedStderr"
echo "$?" > "$tempDir/expectedStdout" 2>"$tempDir/expectedStderr"
2041 grip-branch -d new > "$tempDir/expectedStdout" 2>"$tempDir/expectedStderr"
echo "$?" > "$tempDir/expectedStdout" 2>"$tempDir/expectedStderr"
rm -rf hi
rm -rf nf


# actual
rm -rf '.grip'
grip-branch new > "$tempDir/actualStdout" 2>"$tempDir/actualStderr"
echo "$?" > "$tempDir/actualStdout" 2>"$tempDir/actualStderr"
grip-init > "$tempDir/actualStdout" 2>"$tempDir/actualStderr"
echo "$?" > "$tempDir/actualStdout" 2>"$tempDir/actualStderr"
grip-branch new > "$tempDir/actualStdout" 2>"$tempDir/actualStderr"
echo "$?" > "$tempDir/actualStdout" 2>"$tempDir/actualStderr"
echo hi > hi
grip-branch new > "$tempDir/actualStdout" 2>"$tempDir/actualStderr"
echo "$?" > "$tempDir/actualStdout" 2>"$tempDir/actualStderr"
grip-add hi > "$tempDir/actualStdout" 2>"$tempDir/actualStderr"
echo "$?" > "$tempDir/actualStdout" 2>"$tempDir/actualStderr"
grip-branch new > "$tempDir/actualStdout" 2>"$tempDir/actualStderr"
echo "$?" > "$tempDir/actualStdout" 2>"$tempDir/actualStderr"
grip-commit -m initial > "$tempDir/actualStdout" 2>"$tempDir/actualStderr"
echo "$?" > "$tempDir/actualStdout" 2>"$tempDir/actualStderr"
grip-branch new > "$tempDir/actualStdout" 2>"$tempDir/actualStderr"
echo "$?" > "$tempDir/actualStdout" 2>"$tempDir/actualStderr"
grip-branch -d trunk > "$tempDir/actualStdout" 2>"$tempDir/actualStderr"
echo "$?" > "$tempDir/actualStdout" 2>"$tempDir/actualStderr"
grip-checkout new > "$tempDir/actualStdout" 2>"$tempDir/actualStderr"
echo "$?" > "$tempDir/actualStdout" 2>"$tempDir/actualStderr"
grip-branch -d trunk > "$tempDir/actualStdout" 2>"$tempDir/actualStderr"
echo "$?" > "$tempDir/actualStdout" 2>"$tempDir/actualStderr"
grip-branch -d new > "$tempDir/actualStdout" 2>"$tempDir/actualStderr"
echo "$?" > "$tempDir/actualStdout" 2>"$tempDir/actualStderr"
grip-branch -d doesNotExist > "$tempDir/actualStdout" 2>"$tempDir/actualStderr"
echo "$?" > "$tempDir/actualStdout" 2>"$tempDir/actualStderr"
grip-branch > "$tempDir/actualStdout" 2>"$tempDir/actualStderr"
echo "$?" > "$tempDir/actualStdout" 2>"$tempDir/actualStderr"
grip-branch -d > "$tempDir/actualStdout" 2>"$tempDir/actualStderr"
echo "$?" > "$tempDir/actualStdout" 2>"$tempDir/actualStderr"
grip-branch brnach branch > "$tempDir/actualStdout" 2>"$tempDir/actualStderr"
echo "$?" > "$tempDir/actualStdout" 2>"$tempDir/actualStderr"
grip-branch brnach branch branch > "$tempDir/actualStdout" 2>"$tempDir/actualStderr"
echo "$?" > "$tempDir/actualStdout" 2>"$tempDir/actualStderr"
grip-branch trunk > "$tempDir/actualStdout" 2>"$tempDir/actualStderr"
echo "$?" > "$tempDir/actualStdout" 2>"$tempDir/actualStderr"
grip-branch new > "$tempDir/actualStdout" 2>"$tempDir/actualStderr"
echo "$?" > "$tempDir/actualStdout" 2>"$tempDir/actualStderr"
echo newFile > nf
grip-add newFile > "$tempDir/actualStdout" 2>"$tempDir/actualStderr"
echo "$?" > "$tempDir/actualStdout" 2>"$tempDir/actualStderr"
grip-commit -a -m newCommit > "$tempDir/actualStdout" 2>"$tempDir/actualStderr"
echo "$?" > "$tempDir/actualStdout" 2>"$tempDir/actualStderr"
grip-checkout trunk > "$tempDir/actualStdout" 2>"$tempDir/actualStderr"
echo "$?" > "$tempDir/actualStdout" 2>"$tempDir/actualStderr"
grip-branch -d new > "$tempDir/actualStdout" 2>"$tempDir/actualStderr"
echo "$?" > "$tempDir/actualStdout" 2>"$tempDir/actualStderr"
rm -rf hi
rm -rf nf

if diff -q "$tempDir/expectedStdout" "$tempDir/actualStdout" >/dev/null &&
    diff -q "$tempDir/expectedStderr" "$tempDir/actualStderr" >/dev/null; then
    echo "Test passed 7"
else
    echo "Test failed 7"
fi