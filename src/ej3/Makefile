DIROBJ := obj/
DIREXE := exec/
DIRHEA := include/
DIRSRC := src/

COMPILER := gnatmake

all : dirs main

main : $(DIRSRC)main.adb
	$(COMPILER) -I$(DIRHEA) $^ -D $(DIROBJ) -o $(DIREXE)$@

execution : $(DIREXE)main
	$^

dirs :
	mkdir -p $(DIROBJ) $(DIREXE)

clean : 
	rm -rf *~ $(DIROBJ) $(DIREXE) $(DIRHEA)*~ $(DIRSRC)*~

