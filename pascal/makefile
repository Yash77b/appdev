OBJ = main.o pascal.o screen.o
APPNAME = pascal

$(APPNAME) : $(OBJ)
	gcc -o $(APPNAME) $(OBJ)

%.O : %.C
	GCC -c -o $@ $<

	clean :
		rm $(OBJ) $(APPNAME)
