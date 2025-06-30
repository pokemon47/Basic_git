#!/bin/dash
# all of grip-status testing
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
echo 1 > f1
echo 2 > f2
2041 grip-add f2 > "$tempDir/expectedStdout" 2>"$tempDir/expectedStderr"
echo "$?" > "$tempDir/expectedStdout"
rm -rf f2
echo 3 > f3
2041 grip-add f3 > "$tempDir/expectedStdout" 2>"$tempDir/expectedStderr"
echo "$?" > "$tempDir/expectedStdout"
2041 grip-commit -m f3 > "$tempDir/expectedStdout" 2>"$tempDir/expectedStderr"
echo "$?" > "$tempDir/expectedStdout"
rm -rf f3
2041 grip-add f3 > "$tempDir/expectedStdout" 2>"$tempDir/expectedStderr"
echo "$?" > "$tempDir/expectedStdout"
echo 4 > f4
2041 grip-add f4 > "$tempDir/expectedStdout" 2>"$tempDir/expectedStderr"
echo "$?" > "$tempDir/expectedStdout"
echo 5 > f5
2041 grip-add f5 > "$tempDir/expectedStdout" 2>"$tempDir/expectedStderr"
echo "$?" > "$tempDir/expectedStdout"
echo 5changed > f5
echo 6 > f6
2041 grip-add f6 > "$tempDir/expectedStdout" 2>"$tempDir/expectedStderr"
echo "$?" > "$tempDir/expectedStdout"
2041 grip-commit -m f6 > "$tempDir/expectedStdout" 2>"$tempDir/expectedStderr"
echo "$?" > "$tempDir/expectedStdout"
rm -rf f6
2041 grip-add f6 > "$tempDir/expectedStdout" 2>"$tempDir/expectedStderr"
echo "$?" > "$tempDir/expectedStdout"
echo 6 > f6
echo 7 > f7
2041 grip-add f7 > "$tempDir/expectedStdout" 2>"$tempDir/expectedStderr"
echo "$?" > "$tempDir/expectedStdout"
2041 grip-commit -m f7 > "$tempDir/expectedStdout" 2>"$tempDir/expectedStderr"
echo "$?" > "$tempDir/expectedStdout"
rm -rf f7
2041 grip-add f7 > "$tempDir/expectedStdout" 2>"$tempDir/expectedStderr"
echo "$?" > "$tempDir/expectedStdout"
echo 7Changed > f7
echo 8 > f8
2041 grip-add f8 > "$tempDir/expectedStdout" 2>"$tempDir/expectedStderr"
echo "$?" > "$tempDir/expectedStdout"
2041 grip-commit -m f8 > "$tempDir/expectedStdout" 2>"$tempDir/expectedStderr"
echo "$?" > "$tempDir/expectedStdout"
rm -rf f8
echo 9 > f9
2041 grip-add f9 > "$tempDir/expectedStdout" 2>"$tempDir/expectedStderr"
echo "$?" > "$tempDir/expectedStdout"
2041 grip-commit -m f9 > "$tempDir/expectedStdout" 2>"$tempDir/expectedStderr"
echo "$?" > "$tempDir/expectedStdout"
echo 9Changed > f9
2041 grip-add f9 > "$tempDir/expectedStdout" 2>"$tempDir/expectedStderr"
echo "$?" > "$tempDir/expectedStdout"
rm -rf f9
echo 10 > f10
2041 grip-add f10 > "$tempDir/expectedStdout" 2>"$tempDir/expectedStderr"
echo "$?" > "$tempDir/expectedStdout"
2041 grip-commit -m f10 > "$tempDir/expectedStdout" 2>"$tempDir/expectedStderr"
echo "$?" > "$tempDir/expectedStdout"
echo 11 > f11
2041 grip-add f11 > "$tempDir/expectedStdout" 2>"$tempDir/expectedStderr"
echo "$?" > "$tempDir/expectedStdout"
2041 grip-commit -m f11 > "$tempDir/expectedStdout" 2>"$tempDir/expectedStderr"
echo "$?" > "$tempDir/expectedStdout"
echo 11Changed > f11
2041 grip-add f11 > "$tempDir/expectedStdout" 2>"$tempDir/expectedStderr"
echo "$?" > "$tempDir/expectedStdout"
echo 12 > f12
2041 grip-add f12 > "$tempDir/expectedStdout" 2>"$tempDir/expectedStderr"
echo "$?" > "$tempDir/expectedStdout"
2041 grip-commit -m f12 > "$tempDir/expectedStdout" 2>"$tempDir/expectedStderr"
echo "$?" > "$tempDir/expectedStdout"
echo 12Changed > f12
2041 grip-add f12 > "$tempDir/expectedStdout" 2>"$tempDir/expectedStderr"
echo "$?" > "$tempDir/expectedStdout"
echo 12 > f12
echo 13 > f13
2041 grip-add f13 > "$tempDir/expectedStdout" 2>"$tempDir/expectedStderr"
echo "$?" > "$tempDir/expectedStdout"
2041 grip-commit -m f13 > "$tempDir/expectedStdout" 2>"$tempDir/expectedStderr"
echo "$?" > "$tempDir/expectedStdout"
echo 13Changed > f13
echo 14 > f14
2041 grip-add f14 > "$tempDir/expectedStdout" 2>"$tempDir/expectedStderr"
echo "$?" > "$tempDir/expectedStdout"
2041 grip-commit -m f14 > "$tempDir/expectedStdout" 2>"$tempDir/expectedStderr"
echo "$?" > "$tempDir/expectedStdout"
echo 14Changed > f14
2041 grip-add f14 > "$tempDir/expectedStdout" 2>"$tempDir/expectedStderr"
echo "$?" > "$tempDir/expectedStdout"
echo Changed14 > f14
2041 grip-status > "$tempDir/expectedStdout" 2>"$tempDir/expectedStderr"
echo "$?" > "$tempDir/expectedStdout"


# actual
rm -rf '.grip'
grip-init > "$tempDir/actualStdout" 2>"$tempDir/actualStderr"
echo "$?" > "$tempDir/actualStdout"
echo 1 > f1
echo 2 > f2
grip-add f2 > "$tempDir/actualStdout" 2>"$tempDir/actualStderr"
echo "$?" > "$tempDir/actualStdout"
rm -rf f2
echo 3 > f3
grip-add f3 > "$tempDir/actualStdout" 2>"$tempDir/actualStderr"
echo "$?" > "$tempDir/actualStdout"
grip-commit -m f3 > "$tempDir/actualStdout" 2>"$tempDir/actualStderr"
echo "$?" > "$tempDir/actualStdout"
rm -rf f3
grip-add f3 > "$tempDir/actualStdout" 2>"$tempDir/actualStderr"
echo "$?" > "$tempDir/actualStdout"
echo 4 > f4
grip-add f4 > "$tempDir/actualStdout" 2>"$tempDir/actualStderr"
echo "$?" > "$tempDir/actualStdout"
echo 5 > f5
grip-add f5 > "$tempDir/actualStdout" 2>"$tempDir/actualStderr"
echo "$?" > "$tempDir/actualStdout"
echo 5changed > f5
echo 6 > f6
grip-add f6 > "$tempDir/actualStdout" 2>"$tempDir/actualStderr"
echo "$?" > "$tempDir/actualStdout"
grip-commit -m f6 > "$tempDir/actualStdout" 2>"$tempDir/actualStderr"
echo "$?" > "$tempDir/actualStdout"
rm -rf f6
grip-add f6 > "$tempDir/actualStdout" 2>"$tempDir/actualStderr"
echo "$?" > "$tempDir/actualStdout"
echo 6 > f6
echo 7 > f7
grip-add f7 > "$tempDir/actualStdout" 2>"$tempDir/actualStderr"
echo "$?" > "$tempDir/actualStdout"
grip-commit -m f7 > "$tempDir/actualStdout" 2>"$tempDir/actualStderr"
echo "$?" > "$tempDir/actualStdout"
rm -rf f7
grip-add f7 > "$tempDir/actualStdout" 2>"$tempDir/actualStderr"
echo "$?" > "$tempDir/actualStdout"
echo 7Changed > f7
echo 8 > f8
grip-add f8 > "$tempDir/actualStdout" 2>"$tempDir/actualStderr"
echo "$?" > "$tempDir/actualStdout"
grip-commit -m f8 > "$tempDir/actualStdout" 2>"$tempDir/actualStderr"
echo "$?" > "$tempDir/actualStdout"
rm -rf f8
echo 9 > f9
grip-add f9 > "$tempDir/actualStdout" 2>"$tempDir/actualStderr"
echo "$?" > "$tempDir/actualStdout"
grip-commit -m f9 > "$tempDir/actualStdout" 2>"$tempDir/actualStderr"
echo "$?" > "$tempDir/actualStdout"
echo 9Changed > f9
grip-add f9 > "$tempDir/actualStdout" 2>"$tempDir/actualStderr"
echo "$?" > "$tempDir/actualStdout"
rm -rf f9
echo 10 > f10
grip-add f10 > "$tempDir/actualStdout" 2>"$tempDir/actualStderr"
echo "$?" > "$tempDir/actualStdout"
grip-commit -m f10 > "$tempDir/actualStdout" 2>"$tempDir/actualStderr"
echo "$?" > "$tempDir/actualStdout"
echo 11 > f11
grip-add f11 > "$tempDir/actualStdout" 2>"$tempDir/actualStderr"
echo "$?" > "$tempDir/actualStdout"
grip-commit -m f11 > "$tempDir/actualStdout" 2>"$tempDir/actualStderr"
echo "$?" > "$tempDir/actualStdout"
echo 11Changed > f11
grip-add f11 > "$tempDir/actualStdout" 2>"$tempDir/actualStderr"
echo "$?" > "$tempDir/actualStdout"
echo 12 > f12
grip-add f12 > "$tempDir/actualStdout" 2>"$tempDir/actualStderr"
echo "$?" > "$tempDir/actualStdout"
grip-commit -m f12 > "$tempDir/actualStdout" 2>"$tempDir/actualStderr"
echo "$?" > "$tempDir/actualStdout"
echo 12Changed > f12
grip-add f12 > "$tempDir/actualStdout" 2>"$tempDir/actualStderr"
echo "$?" > "$tempDir/actualStdout"
echo 12 > f12
echo 13 > f13
grip-add f13 > "$tempDir/actualStdout" 2>"$tempDir/actualStderr"
echo "$?" > "$tempDir/actualStdout"
grip-commit -m f13 > "$tempDir/actualStdout" 2>"$tempDir/actualStderr"
echo "$?" > "$tempDir/actualStdout"
echo 13Changed > f13
echo 14 > f14
grip-add f14 > "$tempDir/actualStdout" 2>"$tempDir/actualStderr"
echo "$?" > "$tempDir/actualStdout"
grip-commit -m f14 > "$tempDir/actualStdout" 2>"$tempDir/actualStderr"
echo "$?" > "$tempDir/actualStdout"
echo 14Changed > f14
grip-add f14 > "$tempDir/actualStdout" 2>"$tempDir/actualStderr"
echo "$?" > "$tempDir/actualStdout"
echo Changed14 > f14
grip-status > "$tempDir/actualStdout" 2>"$tempDir/actualStderr"
echo "$?" > "$tempDir/actualStdout"


if diff -q "$tempDir/expectedStdout" "$tempDir/actualStdout" >/dev/null &&
    diff -q "$tempDir/expectedStderr" "$tempDir/actualStderr" >/dev/null; then
    echo "Test passed 2"
else
    echo "Test failed 2"
fi