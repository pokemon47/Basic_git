#!/bin/dash


# 1 - - -


rm -rf '.grip'
grip-init
echo hi > hi
grip-add hi
grip-commit -m initial 
rm -rf hi
grip-add hi
grip-commit -m empty
echo made a new b?ranch here
grip-branch new
echo hi > hi
grip-add hi
rm -rf hi

echo
echo current commit details
echo
grip-log
echo
cat hi
grip-show :hi
grip-show 2:hi
echo
echo checked out to new branch here
grip-checkout new 

echo
echo target commit details
echo
grip-log
cat hi
grip-show :hi
grip-show 1:hi

rm -rf '.grip'
rm -rf hi