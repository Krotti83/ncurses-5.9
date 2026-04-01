# Unofficial repository for ncurses-5.9

`ncurses-5.9` (`libncurses.so.5.9` and `libtinfo.so.5.9`) is required in various proprietary software 
like AMD's (former Xilinx) Vivado/Vitis to run these software on GNU/Linux operating systems. 
Unfortunately mostly of the GNU/Linux distributions no longer include `ncurses-5.9` in the default 
packages. So therefore it is required to build `ncurses-5.9` by yourself.

## Building
```
$ git clone https://github.com/Krotti83/ncurses-5.9.git
$ cd ncurses-5.9
$ ./build.sh
```

## Installing

The built libraries (`libncurses.so.5.9` and `libtinfo.so.5.9`) can be found under the directory
`build/lib` after successful build. They can be manually copied into the default shared library
directory. Don't forget to invoke `ldconfig` after that. Or set the environment variable 
`LD_LIBRARY_PATH` to the path from the libraries.

## Download Links

[ncurses-5.9](https://invisible-island.net/archives/ncurses/ncurses-5.9.tar.gz)  
[ncurses-5.9-20141206 patch](https://invisible-island.net/archives/ncurses/5.9/ncurses-5.9-20141206-patch.sh.bz2)
