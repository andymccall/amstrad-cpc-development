# ----------------------------
# Makefile Options
# ----------------------------

Z88DK           = zcc
Z88DK_FLAGS     = +cpc -create-app -O3 -unsigned -lndos -zorg=16384
ZESARUX         = cd ~/development/tools/zesarux && exec ~/development/tools/zesarux/zesarux
RM              = rm -f
CPCXFS          = cpcxfs
DISK			= $(PWD)/bin/FIRSTPRG.dsk

default: all

all:
	@echo "Building project..."
	mkdir -p bin
	$(Z88DK) $(Z88DK_FLAGS) src/main.c -o bin/FIRSTPRG.out
	rm bin/FIRSTPRG.out
	@echo "Creating disk..."
	$(CPCXFS) -f -ns $(DISK)
	$(CPCXFS) $(DISK) -f -p bin/FIRSTPRG.cpc

clean:
	@echo "Cleaning project..."
	rm -rf bin

run:
	@echo "Launching emulator..."
	$(ZESARUX) $(DISK) >/dev/null 2>&1