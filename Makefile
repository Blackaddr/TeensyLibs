LIBRARY_LIST = \
    cores \
    Wire \
    SPI \
    Encoder \
    Bounce2 \
    Audio \
    MIDI \
    OpenAudio \
    Adafruit_SSD1306 \
    Adafruit_BusIO \
    Adafruit-GFX-Library

all:
	$(foreach libname, $(LIBRARY_LIST), make -f Makefile.$(libname) $(MAKECMDGOALS);)

$(MAKECMDGOALS):
	$(foreach libname, $(LIBRARY_LIST), make -f Makefile.$(libname) $(MAKECMDGOALS);)

