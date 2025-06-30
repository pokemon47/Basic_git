#!/bin/dash



rm -rf '.grip'
echo hi > hi 
2041 grip-commit -m hi
2041 grip-init
2041 grip-init
echo hi > hi 
2041 grip-add hi
2041 grip-commit -m 
2041 grip-commit -m -m
2041 grip-commit
2041 grip-commit -m initial
2041 grip-log
cat hi
2041 grip-show :hi
2041 grip-show 0:hi
2041 grip-commit -m initial


echo bye > bye
2041 grip-add bye

2041 grip-commit
2041 grip-commit -a
2041 grip-commit -a -m
2041 grip-commit -a -tv
2041 grip-commit -tv -m
2041 grip-commit -tv -tv
2041 grip-commit -a -tv initial
2041 grip-commit -tv -m initial
2041 grip-commit -tv -tv initial

2041 grip-log
cat bye
2041 grip-show :bye
2041 grip-show 1:bye
2041 grip-commit -a -m initialBye

echo byeChanged > bye
2041 grip-show :bye
echo bye > bye
2041 grip-commit -a -m revertIndex
cat bye
2041 grip-show :bye
2041 grip-show 2:bye
