#!/bin/dash


# 1 - - 1


rm -rf '.grip'
grip-init
echo hi > hi
grip-add hi
grip-commit -m initial 

echo
echo made a new branch here
# echo
grip-branch new
# 2041 grip-checkout new 
# 2041 grip-checkout trunk 

rm -rf hi
grip-add hi
grip-commit -m emptyCommit 
echo newHi > hi
# 2041 grip-add hi
# rm -rf hi

echo
echo current commit details
grip-log
cat hi
grip-show :hi
grip-show 1:hi

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