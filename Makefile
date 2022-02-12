# Note: OpenAudio has been remove from the LIBRARY_LIST

LIBRARY_LIST = \
    cores \
    Wire \
    SPI \
    Encoder \
    Teensy-4.x-Quad-Encoder-Library \
    Bounce2 \
    Audio \
    MIDI \
    TeensyThreads \
    Adafruit_BusIO \
    Adafruit-GFX-Library \
    Adafruit_SSD1306 \
    WDT_T4 \
    EEPROM

all:
	$(foreach libname, $(LIBRARY_LIST), make -f Makefile.$(libname) $(MAKECMDGOALS);)

$(MAKECMDGOALS):
	$(foreach libname, $(LIBRARY_LIST), make -f Makefile.$(libname) $(MAKECMDGOALS);)

