#!/bin/dash


# - - 1 1


rm -rf '.grip'
2041 grip-init
echo hi > hi
2041 grip-add hi
2041 grip-commit -m initial 

echo
echo made a new branch here
# echo
2041 grip-branch new

rm -rf hi
2041 grip-add hi

echo
echo current commit details
2041 grip-log
cat hi
2041 grip-show :hi
2041 grip-show 0:hi

echo
echo checked out to new branch here

2041 grip-checkout new 

echo
echo target commit details
2041 grip-log
cat hi
2041 grip-show :hi
2041 grip-show 0:hi

rm -rf '.grip'
rm -rf hi