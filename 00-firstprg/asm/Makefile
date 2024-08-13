# ----------------------------
# Makefile Options
# ----------------------------

SJASMPLUS       = sjasmplus
SJASMPLUS_FLAGS = 
RM              = rm -f
ZESARUX         = cd ~/development/tools/zesarux && exec ~/development/tools/zesarux/zesarux
CPCXFS          = cpcxfs
DISK			= $(PWD)/bin/FIRSTPRG.dsk

default: all

all:
	@echo "Building project..."
	mkdir -p bin
	mkdir -p lst
	mkdir -p sld
	${SJASMPLUS} ${SJASMPLUS_FLAGS} --fullpath --outprefix=bin/ --lst=lst/firstprg.lst --sld=sld/firstprg.sld src/main.asm
	@echo "Creating disk..."
	$(CPCXFS) -f -ns $(DISK)
	$(CPCXFS) $(DISK) -f -p bin/firstprg.cpc

clean:
	@echo "Cleaning project..."
	rm -rf bin
	rm -rf lst
	rm -rf sld
	rm -rf *.bin

run:
	@echo "Launching emulator..."
	$(ZESARUX) $(DISK) >/dev/null 2>&1