#!/bin/dash
# tests all the error cases for grip-commit

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
echo hi > hi 
2041 grip-commit -m hi > "$tempDir/expectedStdout" 2>"$tempDir/expectedStderr"
echo "$?" > "$tempDir/expectedStdout"
2041 grip-init > "$tempDir/expectedStdout" 2>"$tempDir/expectedStderr"
echo "$?" > "$tempDir/expectedStdout"
2041 grip-init > "$tempDir/expectedStdout" 2>"$tempDir/expectedStderr"
echo "$?" > "$tempDir/expectedStdout"
echo hi > hi 
2041 grip-add hi > "$tempDir/expectedStdout" 2>"$tempDir/expectedStderr"
echo "$?" > "$tempDir/expectedStdout"
2041 grip-commit -m  > "$tempDir/expectedStdout" 2>"$tempDir/expectedStderr"
echo "$?" > "$tempDir/expectedStdout"
2041 grip-commit -m -m > "$tempDir/expectedStdout" 2>"$tempDir/expectedStderr"
echo "$?" > "$tempDir/expectedStdout"
2041 grip-commit > "$tempDir/expectedStdout" 2>"$tempDir/expectedStderr"
echo "$?" > "$tempDir/expectedStdout"
2041 grip-commit -m initial > "$tempDir/expectedStdout" 2>"$tempDir/expectedStderr"
echo "$?" > "$tempDir/expectedStdout"
2041 grip-log > "$tempDir/expectedStdout" 2>"$tempDir/expectedStderr"
echo "$?" > "$tempDir/expectedStdout"
cat hi > "$tempDir/expectedStdout" 2>"$tempDir/expectedStderr"
2041 grip-show :hi > "$tempDir/expectedStdout" 2>"$tempDir/expectedStderr"
echo "$?" > "$tempDir/expectedStdout"
2041 grip-show 0:hi > "$tempDir/expectedStdout" 2>"$tempDir/expectedStderr"
echo "$?" > "$tempDir/expectedStdout"
2041 grip-commit -m initial > "$tempDir/expectedStdout" 2>"$tempDir/expectedStderr"
echo "$?" > "$tempDir/expectedStdout"
echo bye > bye
2041 grip-add bye > "$tempDir/expectedStdout" 2>"$tempDir/expectedStderr"
echo "$?" > "$tempDir/expectedStdout"
2041 grip-commit > "$tempDir/expectedStdout" 2>"$tempDir/expectedStderr"
echo "$?" > "$tempDir/expectedStdout"
2041 grip-commit -a > "$tempDir/expectedStdout" 2>"$tempDir/expectedStderr"
echo "$?" > "$tempDir/expectedStdout"
2041 grip-commit -a -m > "$tempDir/expectedStdout" 2>"$tempDir/expectedStderr"
echo "$?" > "$tempDir/expectedStdout"
2041 grip-commit -a -tv > "$tempDir/expectedStdout" 2>"$tempDir/expectedStderr"
echo "$?" > "$tempDir/expectedStdout"
2041 grip-commit -tv -m > "$tempDir/expectedStdout" 2>"$tempDir/expectedStderr"
echo "$?" > "$tempDir/expectedStdout"
2041 grip-commit -tv -tv > "$tempDir/expectedStdout" 2>"$tempDir/expectedStderr"
echo "$?" > "$tempDir/expectedStdout"
2041 grip-commit -a -tv initial > "$tempDir/expectedStdout" 2>"$tempDir/expectedStderr"
echo "$?" > "$tempDir/expectedStdout"
2041 grip-commit -tv -m initial > "$tempDir/expectedStdout" 2>"$tempDir/expectedStderr"
echo "$?" > "$tempDir/expectedStdout"
2041 grip-commit -tv -tv initial > "$tempDir/expectedStdout" 2>"$tempDir/expectedStderr"
echo "$?" > "$tempDir/expectedStdout"
2041 grip-log > "$tempDir/expectedStdout" 2>"$tempDir/expectedStderr"
echo "$?" > "$tempDir/expectedStdout"
cat bye > "$tempDir/expectedStdout" 2>"$tempDir/expectedStderr"
2041 grip-show :bye > "$tempDir/expectedStdout" 2>"$tempDir/expectedStderr"
echo "$?" > "$tempDir/expectedStdout"
2041 grip-show 1:bye > "$tempDir/expectedStdout" 2>"$tempDir/expectedStderr"
echo "$?" > "$tempDir/expectedStdout"
2041 grip-commit -a -m initialBye > "$tempDir/expectedStdout" 2>"$tempDir/expectedStderr"
echo "$?" > "$tempDir/expectedStdout"
echo byeChanged > bye
2041 grip-show :bye > "$tempDir/expectedStdout" 2>"$tempDir/expectedStderr"
echo "$?" > "$tempDir/expectedStdout"
echo bye > bye
2041 grip-commit -a -m revertIndex > "$tempDir/expectedStdout" 2>"$tempDir/expectedStderr"
echo "$?" > "$tempDir/expectedStdout"
cat bye > "$tempDir/expectedStdout" 2>"$tempDir/expectedStderr"
2041 grip-show :bye > "$tempDir/expectedStdout" 2>"$tempDir/expectedStderr"
echo "$?" > "$tempDir/expectedStdout"
2041 grip-show 2:bye > "$tempDir/expectedStdout" 2>"$tempDir/expectedStderr"
echo "$?" > "$tempDir/expectedStdout"




# actual
rm -rf '.grip'
echo hi > hi 
grip-commit -m hi > "$tempDir/actualStdout" 2>"$tempDir/actualStderr"
echo "$?" > "$tempDir/actualStdout"
grip-init > "$tempDir/actualStdout" 2>"$tempDir/actualStderr"
echo "$?" > "$tempDir/actualStdout"
grip-init > "$tempDir/actualStdout" 2>"$tempDir/actualStderr"
echo "$?" > "$tempDir/actualStdout"
echo hi > hi 
grip-add hi > "$tempDir/actualStdout" 2>"$tempDir/actualStderr"
echo "$?" > "$tempDir/actualStdout"
grip-commit -m  > "$tempDir/actualStdout" 2>"$tempDir/actualStderr"
echo "$?" > "$tempDir/actualStdout"
grip-commit -m -m > "$tempDir/actualStdout" 2>"$tempDir/actualStderr"
echo "$?" > "$tempDir/actualStdout"
grip-commit > "$tempDir/actualStdout" 2>"$tempDir/actualStderr"
echo "$?" > "$tempDir/actualStdout"
grip-commit -m initial > "$tempDir/actualStdout" 2>"$tempDir/actualStderr"
echo "$?" > "$tempDir/actualStdout"
grip-log > "$tempDir/actualStdout" 2>"$tempDir/actualStderr"
echo "$?" > "$tempDir/actualStdout"
cat hi > "$tempDir/actualStdout" 2>"$tempDir/actualStderr"
grip-show :hi > "$tempDir/actualStdout" 2>"$tempDir/actualStderr"
echo "$?" > "$tempDir/actualStdout"
grip-show 0:hi > "$tempDir/actualStdout" 2>"$tempDir/actualStderr"
echo "$?" > "$tempDir/actualStdout"
grip-commit -m initial > "$tempDir/actualStdout" 2>"$tempDir/actualStderr"
echo "$?" > "$tempDir/actualStdout"
echo bye > bye
grip-add bye > "$tempDir/actualStdout" 2>"$tempDir/actualStderr"
echo "$?" > "$tempDir/actualStdout"
grip-commit > "$tempDir/actualStdout" 2>"$tempDir/actualStderr"
echo "$?" > "$tempDir/actualStdout"
grip-commit -a > "$tempDir/actualStdout" 2>"$tempDir/actualStderr"
echo "$?" > "$tempDir/actualStdout"
grip-commit -a -m > "$tempDir/actualStdout" 2>"$tempDir/actualStderr"
echo "$?" > "$tempDir/actualStdout"
grip-commit -a -tv > "$tempDir/actualStdout" 2>"$tempDir/actualStderr"
echo "$?" > "$tempDir/actualStdout"
grip-commit -tv -m > "$tempDir/actualStdout" 2>"$tempDir/actualStderr"
echo "$?" > "$tempDir/actualStdout"
grip-commit -tv -tv > "$tempDir/actualStdout" 2>"$tempDir/actualStderr"
echo "$?" > "$tempDir/actualStdout"
grip-commit -a -tv initial > "$tempDir/actualStdout" 2>"$tempDir/actualStderr"
echo "$?" > "$tempDir/actualStdout"
grip-commit -tv -m initial > "$tempDir/actualStdout" 2>"$tempDir/actualStderr"
echo "$?" > "$tempDir/actualStdout"
grip-commit -tv -tv initial > "$tempDir/actualStdout" 2>"$tempDir/actualStderr"
echo "$?" > "$tempDir/actualStdout"
grip-log > "$tempDir/actualStdout" 2>"$tempDir/actualStderr"
echo "$?" > "$tempDir/actualStdout"
cat bye > "$tempDir/actualStdout" 2>"$tempDir/actualStderr"
grip-show :bye > "$tempDir/actualStdout" 2>"$tempDir/actualStderr"
echo "$?" > "$tempDir/actualStdout"
grip-show 1:bye > "$tempDir/actualStdout" 2>"$tempDir/actualStderr"
echo "$?" > "$tempDir/actualStdout"
grip-commit -a -m initialBye > "$tempDir/actualStdout" 2>"$tempDir/actualStderr"
echo "$?" > "$tempDir/actualStdout"
echo byeChanged > bye
grip-show :bye > "$tempDir/actualStdout" 2>"$tempDir/actualStderr"
echo "$?" > "$tempDir/actualStdout"
echo bye > bye
grip-commit -a -m revertIndex > "$tempDir/actualStdout" 2>"$tempDir/actualStderr"
echo "$?" > "$tempDir/actualStdout"
cat bye > "$tempDir/actualStdout" 2>"$tempDir/actualStderr"
grip-show :bye > "$tempDir/actualStdout" 2>"$tempDir/actualStderr"
echo "$?" > "$tempDir/actualStdout"
grip-show 2:bye > "$tempDir/actualStdout" 2>"$tempDir/actualStderr"
echo "$?" > "$tempDir/actualStdout"

if diff -q "$tempDir/expectedStdout" "$tempDir/actualStdout" >/dev/null &&
    diff -q "$tempDir/expectedStderr" "$tempDir/actualStderr" >/dev/null; then
    echo "Test passed 3"
else
    echo "Test failed 3"
fi