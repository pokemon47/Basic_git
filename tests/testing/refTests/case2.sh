#!/bin/dash


# 1 - - -


rm -rf '.grip'
2041 grip-init
echo hi > hi
2041 grip-add hi
2041 grip-commit -m initial 
rm -rf hi
2041 grip-add hi
2041 grip-commit -m empty
echo made a new b?ranch here
2041 grip-branch new
echo hi > hi
2041 grip-add hi
rm -rf hi

echo
echo current commit details
echo
2041 grip-log
echo
cat hi
2041 grip-show :hi
2041 grip-show 2:hi
echo
echo checked out to new branch here
2041 grip-checkout new 

echo
echo target commit details
echo
2041 grip-log
cat hi
2041 grip-show :hi
2041 grip-show 1:hi

rm -rf '.grip'
rm -rf hi