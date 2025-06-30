#!/bin/dash



rm -rf '.grip'
2041 grip-show
2041 grip-init
2041 grip-show
echo hi > hi
2041 grip-show
2041 grip-show :hi
2041 grip-show 0:hi
2041 grip-add hi
2041 grip-show
2041 grip-show :hi
2041 grip-show :doesNotExist
2041 grip-show 0:hi
2041 grip-commit -m initial
2041 grip-show
2041 grip-show :hi
2041 grip-show 0:hi
2041 grip-show 0:doesNotExist
2041 grip-show 1:hi
2041 grip-show 10:hi
2041 grip-show hi
2041 grip-show hi:
2041 grip-show hi:hi
2041 grip-show -:hi
2041 grip-show :-hi

