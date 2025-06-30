#!/bin/dash 
# some merge testing

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
2041 grip-commit -m initial > "$tempDir/expectedStdout" 2>"$tempDir/expectedStderr"
echo "$?" > "$tempDir/expectedStdout"
2041 grip-branch new > "$tempDir/expectedStdout" 2>"$tempDir/expectedStderr"
echo "$?" > "$tempDir/expectedStdout"
2041 grip-add hi > "$tempDir/expectedStdout" 2>"$tempDir/expectedStderr"
echo "$?" > "$tempDir/expectedStdout"
echo newHi > hi2
echo "$?" > "$tempDir/expectedStdout"
2041 grip-add hi2 > "$tempDir/expectedStdout" 2>"$tempDir/expectedStderr"
echo "$?" > "$tempDir/expectedStdout"
2041 grip-commit -m changed > "$tempDir/expectedStdout" 2>"$tempDir/expectedStderr"
echo "$?" > "$tempDir/expectedStdout"
cat hi > "$tempDir/expectedStdout" 2>"$tempDir/expectedStderr"
cat hi2 > "$tempDir/expectedStdout" 2>"$tempDir/expectedStderr"
2041 grip-show :hi > "$tempDir/expectedStdout" 2>"$tempDir/expectedStderr"
echo "$?" > "$tempDir/expectedStdout"
2041 grip-show 1:hi > "$tempDir/expectedStdout" 2>"$tempDir/expectedStderr"
echo "$?" > "$tempDir/expectedStdout"
2041 grip-show :hi2 > "$tempDir/expectedStdout" 2>"$tempDir/expectedStderr"
echo "$?" > "$tempDir/expectedStdout"
2041 grip-show 1:hi2 > "$tempDir/expectedStdout" 2>"$tempDir/expectedStderr"
echo "$?" > "$tempDir/expectedStdout"
2041 grip-checkout new > "$tempDir/expectedStdout" 2>"$tempDir/expectedStderr"
echo "$?" > "$tempDir/expectedStdout"
echo bye > hi
2041 grip-merge trunk -m merging > "$tempDir/expectedStdout" 2>"$tempDir/expectedStderr"
echo "$?" > "$tempDir/expectedStdout"
2041 grip-add hi > "$tempDir/expectedStdout" 2>"$tempDir/expectedStderr"
echo "$?" > "$tempDir/expectedStdout"
2041 grip-merge trunk -m merging > "$tempDir/expectedStdout" 2>"$tempDir/expectedStderr"
echo "$?" > "$tempDir/expectedStdout"
2041 grip-commit -m changedInitial > "$tempDir/expectedStdout" 2>"$tempDir/expectedStderr"
echo "$?" > "$tempDir/expectedStdout"
echo hi > hi2
2041 grip-add hi2 > "$tempDir/expectedStdout" 2>"$tempDir/expectedStderr"
echo "$?" > "$tempDir/expectedStdout"
rm -rf hi2
2041 grip-merge trunk -m merging > "$tempDir/expectedStdout" 2>"$tempDir/expectedStderr"
echo "$?" > "$tempDir/expectedStdout"
2041 grip-log > "$tempDir/expectedStdout" 2>"$tempDir/expectedStderr"
echo "$?" > "$tempDir/expectedStdout"
cat hi > "$tempDir/expectedStdout" 2>"$tempDir/expectedStderr"
2041 grip-show :hi > "$tempDir/expectedStdout" 2>"$tempDir/expectedStderr"
echo "$?" > "$tempDir/expectedStdout"
2041 grip-show 4:hi > "$tempDir/expectedStdout" 2>"$tempDir/expectedStderr"
echo "$?" > "$tempDir/expectedStdout"


# actual
rm -rf '.grip'
grip-init > "$tempDir/actualStdout" 2>"$tempDir/actualStderr"
echo "$?" > "$tempDir/actualStdout"
echo hi > hi
grip-add hi > "$tempDir/actualStdout" 2>"$tempDir/actualStderr"
echo "$?" > "$tempDir/actualStdout"
grip-commit -m initial > "$tempDir/actualStdout" 2>"$tempDir/actualStderr"
echo "$?" > "$tempDir/actualStdout"
grip-branch new > "$tempDir/actualStdout" 2>"$tempDir/actualStderr"
echo "$?" > "$tempDir/actualStdout"
grip-add hi > "$tempDir/actualStdout" 2>"$tempDir/actualStderr"
echo "$?" > "$tempDir/actualStdout"
echo newHi > hi2 > "$tempDir/actualStdout" 2>"$tempDir/actualStderr"
echo "$?" > "$tempDir/actualStdout"
grip-add hi2 > "$tempDir/actualStdout" 2>"$tempDir/actualStderr"
echo "$?" > "$tempDir/actualStdout"
grip-commit -m changed > "$tempDir/actualStdout" 2>"$tempDir/actualStderr"
echo "$?" > "$tempDir/actualStdout"
cat hi > "$tempDir/actualStdout" 2>"$tempDir/actualStderr"
cat hi2 > "$tempDir/actualStdout" 2>"$tempDir/actualStderr"
grip-show :hi > "$tempDir/actualStdout" 2>"$tempDir/actualStderr"
echo "$?" > "$tempDir/actualStdout"
grip-show 1:hi > "$tempDir/actualStdout" 2>"$tempDir/actualStderr"
echo "$?" > "$tempDir/actualStdout"
grip-show :hi2 > "$tempDir/actualStdout" 2>"$tempDir/actualStderr"
echo "$?" > "$tempDir/actualStdout"
grip-show 1:hi2 > "$tempDir/actualStdout" 2>"$tempDir/actualStderr"
echo "$?" > "$tempDir/actualStdout"
grip-checkout new > "$tempDir/actualStdout" 2>"$tempDir/actualStderr"
echo "$?" > "$tempDir/actualStdout"
echo bye > hi
grip-merge trunk -m merging > "$tempDir/actualStdout" 2>"$tempDir/actualStderr"
echo "$?" > "$tempDir/actualStdout"
grip-add hi > "$tempDir/actualStdout" 2>"$tempDir/actualStderr"
echo "$?" > "$tempDir/actualStdout"
grip-merge trunk -m merging > "$tempDir/actualStdout" 2>"$tempDir/actualStderr"
echo "$?" > "$tempDir/actualStdout"
grip-commit -m changedInitial > "$tempDir/actualStdout" 2>"$tempDir/actualStderr"
echo "$?" > "$tempDir/actualStdout"
echo hi > hi2
grip-add hi2 > "$tempDir/actualStdout" 2>"$tempDir/actualStderr"
echo "$?" > "$tempDir/actualStdout"
rm -rf hi2
grip-merge trunk -m merging > "$tempDir/actualStdout" 2>"$tempDir/actualStderr"
echo "$?" > "$tempDir/actualStdout"
grip-log > "$tempDir/actualStdout" 2>"$tempDir/actualStderr"
echo "$?" > "$tempDir/actualStdout"
cat hi > "$tempDir/actualStdout" 2>"$tempDir/actualStderr"
grip-show :hi > "$tempDir/actualStdout" 2>"$tempDir/actualStderr"
echo "$?" > "$tempDir/actualStdout"
grip-show 4:hi > "$tempDir/actualStdout" 2>"$tempDir/actualStderr"
echo "$?" > "$tempDir/actualStdout"


if diff -q "$tempDir/expectedStdout" "$tempDir/actualStdout" >/dev/null &&
    diff -q "$tempDir/expectedStderr" "$tempDir/actualStderr" >/dev/null; then
    echo "Test passed 1"
else
    echo "Test failed 1"
fi