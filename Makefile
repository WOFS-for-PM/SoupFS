#
# Makefile for EulerFS
#

KSRC ?= /lib/modules/$(shell uname -r)/build

obj-m += eulerfs.o

eulerfs-y := dir.o file.o inode.o namei.o super.o symlink.o
eulerfs-y += dax.o dht.o dep.o nvalloc.o wear.o
eulerfs-y += kmem_cache.o

all:
	$(MAKE) -C $(KSRC) M=`pwd`

clean:
	rm -rf *.o *.mod.c modules.* Modules.* *.ko
