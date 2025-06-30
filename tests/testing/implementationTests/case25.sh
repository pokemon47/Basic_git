#!/bin/dash


# 2 - 1 1


rm -rf '.grip'
grip-init
echo hi > hi
grip-add hi
grip-commit -m initial 

echo
echo made a new branch here
# echo
grip-branch new

rm -rf hi
grip-add hi
echo newHi > hi

echo
echo current commit details
grip-log
cat hi
grip-show :hi
grip-show 0:hi

echo
echo checked out to new branch here

grip-checkout new 

echo
echo target commit details
grip-log
cat hi
grip-show :hi
grip-show 0:hi

rm -rf '.grip'
rm -rf hi