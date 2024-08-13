# ----------------------------
# Makefile Options
# ----------------------------

Z88DK           = zcc
Z88DK_FLAGS     = +cpc -create-app -O3 -unsigned -lndos -zorg=16384

RM              = rm -f

default: all

all:
	@echo "Building project..."
	mkdir -p bin
	$(Z88DK) $(Z88DK_FLAGS) src/main.c -o bin/FIRSTPRG.out
	rm bin/FIRSTPRG.out

clean:
	@echo "Cleaning project..."
	rm -rf bin

run:
	@echo "Launching emulator..."

#memory &3fff
#load "out.cpc",&4000
#call &4000