# Note: OpenAudio has been remove from the LIBRARY_LIST

LIBRARY_LIST = \
    cores \
    Wire \
    SPI \
    Encoder \
    Teensy-4.x-Quad-Encoder-Library \
    Bounce2 \
    MIDI \
    TeensyThreads \
    Adafruit_BusIO \
    Adafruit-GFX-Library \
    Adafruit_SSD1306 \
    Adafruit_SH1106 \
    WDT_T4 \
    EEPROM \
    LittleFS \
    TeensyDebug

# Audio, Crypto

all:
	-cd ./patches && ./apply_patches && cd ..
	$(foreach libname, $(LIBRARY_LIST), $(MAKE) -f Makefile.$(libname) $(MAKECMDGOALS);)

$(MAKECMDGOALS):
	-cd ./patches && ./apply_patches && cd ..
	$(foreach libname, $(LIBRARY_LIST), $(MAKE) -f Makefile.$(libname) $(MAKECMDGOALS);)

