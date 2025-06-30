#!/bin/dash 
# All of grip-add testing

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
2041 grip-add > "$tempDir/expectedStdout" 2>"$tempDir/expectedStderr"
echo "$?" > "$tempDir/expectedStdout"
2041 grip-add hi > "$tempDir/expectedStdout" 2>"$tempDir/expectedStderr"
echo "$?" > "$tempDir/expectedStdout"
2041 grip-show :hi > "$tempDir/expectedStdout" 2>"$tempDir/expectedStderr"
echo "$?" > "$tempDir/expectedStdout"
2041 grip-init > "$tempDir/expectedStdout" 2>"$tempDir/expectedStderr"
echo "$?" > "$tempDir/expectedStdout"
2041 grip-add hi > "$tempDir/expectedStdout" 2>"$tempDir/expectedStderr"
echo "$?" > "$tempDir/expectedStdout"
2041 grip-show :hi > "$tempDir/expectedStdout" 2>"$tempDir/expectedStderr"
echo "$?" > "$tempDir/expectedStdout"
echo hi > hi
2041 grip-add > "$tempDir/expectedStdout" 2>"$tempDir/expectedStderr"
echo "$?" > "$tempDir/expectedStdout"
2041 grip-add hi > "$tempDir/expectedStdout" 2>"$tempDir/expectedStderr"
echo "$?" > "$tempDir/expectedStdout"
2041 grip-show :hi > "$tempDir/expectedStdout" 2>"$tempDir/expectedStderr"
echo "$?" > "$tempDir/expectedStdout"
echo hi > _hi
2041 grip-add _hi > "$tempDir/expectedStdout" 2>"$tempDir/expectedStderr"
echo "$?" > "$tempDir/expectedStdout"
2041 grip-show :_hi > "$tempDir/expectedStdout" 2>"$tempDir/expectedStderr"
echo "$?" > "$tempDir/expectedStdout"
mkdir fakedir
echo new > "./fakedir/new"
2041 grip-add fakedir > "$tempDir/expectedStdout" 2>"$tempDir/expectedStderr"
echo "$?" > "$tempDir/expectedStdout"
2041 grip-show :fakedir > "$tempDir/expectedStdout" 2>"$tempDir/expectedStderr"
echo "$?" > "$tempDir/expectedStdout"
2041 grip-add "./fakedir/new" > "$tempDir/expectedStdout" 2>"$tempDir/expectedStderr"
echo "$?" > "$tempDir/expectedStdout"
2041 grip-show :"./fakedir/new" > "$tempDir/expectedStdout" 2>"$tempDir/expectedStderr"
echo "$?" > "$tempDir/expectedStdout"
rm -rf fakedir
rm -rf hi
rm -rf _hi
2041 grip-add hi > "$tempDir/expectedStdout" 2>"$tempDir/expectedStderr"
echo "$?" > "$tempDir/expectedStdout"
2041 grip-show :hi > "$tempDir/expectedStdout" 2>"$tempDir/expectedStderr"
echo "$?" > "$tempDir/expectedStdout"
2041 grip-add hi > "$tempDir/expectedStdout" 2>"$tempDir/expectedStderr"
echo "$?" > "$tempDir/expectedStdout"
2041 grip-show :hi > "$tempDir/expectedStdout" 2>"$tempDir/expectedStderr"
echo "$?" > "$tempDir/expectedStdout"



# actual
rm -rf '.grip'
grip-add > "$tempDir/actualStdout" 2>"$tempDir/actualStderr"
echo "$?" > "$tempDir/actualStdout"
grip-add hi > "$tempDir/actualStdout" 2>"$tempDir/actualStderr"
echo "$?" > "$tempDir/actualStdout"
grip-show :hi > "$tempDir/actualStdout" 2>"$tempDir/actualStderr"
echo "$?" > "$tempDir/actualStdout"
grip-init > "$tempDir/actualStdout" 2>"$tempDir/actualStderr"
echo "$?" > "$tempDir/actualStdout"
grip-add hi > "$tempDir/actualStdout" 2>"$tempDir/actualStderr"
echo "$?" > "$tempDir/actualStdout"
grip-show :hi > "$tempDir/actualStdout" 2>"$tempDir/actualStderr"
echo "$?" > "$tempDir/actualStdout"
echo hi > hi
grip-add > "$tempDir/actualStdout" 2>"$tempDir/actualStderr"
echo "$?" > "$tempDir/actualStdout"
grip-add hi > "$tempDir/actualStdout" 2>"$tempDir/actualStderr"
echo "$?" > "$tempDir/actualStdout"
grip-show :hi > "$tempDir/actualStdout" 2>"$tempDir/actualStderr"
echo "$?" > "$tempDir/actualStdout"
echo hi > _hi
grip-add _hi > "$tempDir/actualStdout" 2>"$tempDir/actualStderr"
echo "$?" > "$tempDir/actualStdout"
grip-show :_hi > "$tempDir/actualStdout" 2>"$tempDir/actualStderr"
echo "$?" > "$tempDir/actualStdout"
mkdir fakedir
echo new > "./fakedir/new"
grip-add fakedir > "$tempDir/actualStdout" 2>"$tempDir/actualStderr"
echo "$?" > "$tempDir/actualStdout"
grip-show :fakedir > "$tempDir/actualStdout" 2>"$tempDir/actualStderr"
echo "$?" > "$tempDir/actualStdout"
grip-add "./fakedir/new" > "$tempDir/actualStdout" 2>"$tempDir/actualStderr"
echo "$?" > "$tempDir/actualStdout"
grip-show :"./fakedir/new" > "$tempDir/actualStdout" 2>"$tempDir/actualStderr"
echo "$?" > "$tempDir/actualStdout"
rm -rf fakedir
rm -rf hi
rm -rf _hi
grip-add hi > "$tempDir/actualStdout" 2>"$tempDir/actualStderr"
echo "$?" > "$tempDir/actualStdout"
grip-show :hi > "$tempDir/actualStdout" 2>"$tempDir/actualStderr"
echo "$?" > "$tempDir/actualStdout"
grip-add hi > "$tempDir/actualStdout" 2>"$tempDir/actualStderr"
echo "$?" > "$tempDir/actualStdout"
grip-show :hi > "$tempDir/actualStdout" 2>"$tempDir/actualStderr"
echo "$?" > "$tempDir/actualStdout"

rm -rf .grip

if diff -q "$tempDir/expectedStdout" "$tempDir/actualStdout" >/dev/null &&
    diff -q "$tempDir/expectedStderr" "$tempDir/actualStderr" >/dev/null; then
    echo "Test passed 9"
else
    echo "Test failed 9"
fi