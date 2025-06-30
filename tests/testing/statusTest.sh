#!/bin/dash



rm -rf '.grip'
2041 grip-init

echo 1 > f1

echo 2 > f2
2041 grip-add f2
rm -rf f2

echo 3 > f3
2041 grip-add f3
2041 grip-commit -m f3
rm -rf f3
2041 grip-add f3
# 2041 grip-rm f3

echo 4 > f4
2041 grip-add f4

echo 5 > f5
2041 grip-add f5
echo 5changed > f5

echo 6 > f6
2041 grip-add f6
2041 grip-commit -m f6
rm -rf f6
2041 grip-add f6
echo 6 > f6

echo 7 > f7
2041 grip-add f7
2041 grip-commit -m f7
rm -rf f7
2041 grip-add f7
echo 7Changed > f7

echo 8 > f8
2041 grip-add f8
2041 grip-commit -m f8
rm -rf f8

echo 9 > f9
2041 grip-add f9
2041 grip-commit -m f9
echo 9Changed > f9
2041 grip-add f9
rm -rf f9

echo 10 > f10
2041 grip-add f10
2041 grip-commit -m f10

echo 11 > f11
2041 grip-add f11
2041 grip-commit -m f11
echo 11Changed > f11
2041 grip-add f11


echo 12 > f12
2041 grip-add f12
2041 grip-commit -m f12
echo 12Changed > f12
2041 grip-add f12
echo 12 > f12

echo 13 > f13
2041 grip-add f13
2041 grip-commit -m f13
echo 13Changed > f13

echo 14 > f14
2041 grip-add f14
2041 grip-commit -m f14
echo 14Changed > f14
2041 grip-add f14
echo Changed14 > f14

2041 grip-status
