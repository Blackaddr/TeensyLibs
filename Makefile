LIBRARY_LIST = \
    Wire \
    SPI \
    Audio

all:
	$(foreach libname, $(LIBRARY_LIST), make -f Makefile.$(libname) $(MAKECMDGOALS);)

$(MAKECMDGOALS):
	$(foreach libname, $(LIBRARY_LIST), make -f Makefile.$(libname) $(MAKECMDGOALS);)

