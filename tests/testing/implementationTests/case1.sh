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
grip-branch new
echo hi > hi

grip-log
cat hi
grip-show :hi
grip-show 1:hi

grip-checkout new 

grip-log
cat hi
grip-show :hi
grip-show 1:hi

rm -rf '.grip'
rm -rf hi