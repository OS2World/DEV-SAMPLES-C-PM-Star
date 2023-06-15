# make makefile
# 
# Tools used:
#  Compile::Resource Compiler
#  Compile::GNU C
#  Make: make
all : star.exe

star.exe : star.obj star.def
	gcc -Zomf star.obj star.def -o star.exe

star.obj : star.c 
	gcc -Wall -Zomf -c -O2 star.c -o star.obj


clean :
	rm -rf *exe *res *obj *lib