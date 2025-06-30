#!/bin/dash



rm -rf '.grip'
2041 grip-add
2041 grip-add hi
2041 grip-show :hi
2041 grip-init
2041 grip-add hi
2041 grip-show :hi
echo hi > hi
2041 grip-add
2041 grip-add hi
2041 grip-show :hi
echo hi > _hi
2041 grip-add _hi
2041 grip-show :_hi
mkdir fakedir
echi new > "./fakedir/new"
2041 grip-add fakedir
2041 grip-show :fakedir
2041 grip-add "./fakedir/new"
2041 grip-show :"./fakedir/new"
rm -rf fakedir
rm -rf hi
rm -rf _hi
2041 grip-add hi
2041 grip-show :hi
2041 grip-add hi
2041 grip-show :hi

2041 grip-commit -m initial

2041 grip-branch new