#!/bin/dash



rm -rf '.grip'
2041 grip-branch new
2041 grip-init
2041 grip-branch new
echo hi > hi
2041 grip-branch new
2041 grip-add hi
2041 grip-branch new
2041 grip-commit -m initial
2041 grip-branch new
2041 grip-branch -d trunk
2041 grip-checkout new
2041 grip-branch -d trunk
2041 grip-branch -d new
2041 grip-branch -d doesNotExist
2041 grip-branch
2041 grip-branch -d
2041 grip-branch brnach branch
2041 grip-branch brnach branch branch
2041 grip-branch trunk
2041 grip-branch new
echo newFile > nf
2041 grip-add newFile
2041 grip-commit -a -m newCommit
2041 grip-checkout trunk
2041 grip-branch -d new
rm -rf hi
rm -rf nf


