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
2041 grip-branch new
echo hi > hi

2041 grip-log
cat hi
2041 grip-show :hi
2041 grip-show 1:hi

2041 grip-checkout new 

2041 grip-log
cat hi
2041 grip-show :hi
2041 grip-show 1:hi

rm -rf '.grip'
rm -rf hi