LIBRARY_LIST = \
    cores \
    Wire \
    SPI \
    Encoder \
    Bounce2 \
    Audio \
    OpenAudio

all:
	$(foreach libname, $(LIBRARY_LIST), make -f Makefile.$(libname) $(MAKECMDGOALS);)

$(MAKECMDGOALS):
	$(foreach libname, $(LIBRARY_LIST), make -f Makefile.$(libname) $(MAKECMDGOALS);)

