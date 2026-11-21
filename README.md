# About

Myth os is a: free, open-source, privacy respecting, easy to use, general purpose operating system. Most code in this codebase currently is taken form: https://www.youtube.com/watch?v=9t-SPC7Tczc&list=PLFjM7v6KGMpiH2G-kT781ByCNC_0pKpPN&index=1. This won't be the case forever.

# Getting started 

```shell
# Clone myth
git clone https://github.com/someVeryCoolProgrammer/myth.git

# Install qemu and make.
sudo apt install qemu, make

# Make bin directory.
mkdir bin

# Compile myth.
make

# Run myth.
qemu-system-x86_64 -fda bin/main_floppy.img -boot a
```
