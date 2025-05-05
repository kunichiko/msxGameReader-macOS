CC = gcc

# Apple Silicon (arm64) 用の Homebrew パス
HOMEBREW_PREFIX = /opt/homebrew

# pkg-config を使って libusb の CFLAGS/LIBS を取得（推奨）
PKG_CFLAGS := $(shell PKG_CONFIG_PATH=$(HOMEBREW_PREFIX)/lib/pkgconfig pkg-config --cflags libusb-1.0)
PKG_LIBS   := $(shell PKG_CONFIG_PATH=$(HOMEBREW_PREFIX)/lib/pkgconfig pkg-config --libs libusb-1.0)

CFLAGS = -std=gnu99 -Wall -pedantic -I./include $(PKG_CFLAGS)
LIBS = $(PKG_LIBS)

OFILES = obj/msxGameReader.o obj/debugnet.o

all: bin/msxGameReader

clean:
	rm -f obj/*.o bin/*msxGameReader*

obj/msxGameReader.o: source/msxGameReader.c 
	@mkdir -p obj
	$(CC) $(CFLAGS) -c source/msxGameReader.c -o $@

obj/debugnet.o: source/debugnet.c
	@mkdir -p obj
	$(CC) $(CFLAGS) -c source/debugnet.c -o $@

bin/msxGameReader: $(OFILES)  
	@mkdir -p bin
	$(CC) $(OFILES) -o $@ $(LIBS)
