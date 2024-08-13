# Amstrad CPC Development Environment Setup

### Install VSCode

### Install sjasmplus

   $ git clone https://github.com/z00m128/sjasmplus.git
   $ cd sjasmplus
   $ git clone https://github.com/vinniefalco/LuaBridge.git
   $ make clean
   $ make
   $ make install PREFIX=~/development/tools/sjasmplus

Test:

   $ ./sjasmplus --version
   SjASMPlus Z80 Cross-Assembler v1.20.3 (https://github.com/z00m128/sjasmplus)

### Install z88dk

   $ sudo apt install libgmp-dev libxml2-dev

   $ git clone --recurse-submodules --remote-submodules https://github.com/z88dk/z88dk.git
   $ cd z88dk
   $ ./build.sh
   $ make install PREFIX=~/development/tools/z88dk

Add the z88dk to th path:

   $ vi ~/.profile

Add the following at the bottom of the file:

   # set PATH so it includes z88dk if it exists
   if [ -d "$HOME/development/tools/z88dk/bin" ] ; then
       PATH="$HOME/development/tools/z88dk/bin:$PATH"
   fi

   # set ZCCCFG if the directory exists
   if [ -d "$HOME/development/tools/z88dk/share/z88dk/lib/config" ] ; then
       ZCCCFG=${HOME}/develoment/tools/z88dk/share/z88dk/lib/config
   fi

Test:

   $ zcc -v
   A config file must be specified with +file

   zcc - Frontend for the z88dk Cross-C Compiler - v22742-3f05c420f1-20240625
   ...