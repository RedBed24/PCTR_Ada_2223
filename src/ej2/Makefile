DIROBJ := obj/
DIREXE := exec/
DIRHEA := include/
DIRSRC := src/

COMPILER := gnatmake

all : dirs pkg_procedure

pkg_procedure :
	$(COMPILER) -I$(DIRHEA) $(DIRSRC)$@.adb -D $(DIROBJ) -o $(DIREXE)$@

dirs :
	mkdir -p $(DIROBJ) $(DIREXE)

clean : 
	rm -rf *~ $(DIROBJ) $(DIREXE) $(DIRHEA)*~ $(DIRSRC)*~

