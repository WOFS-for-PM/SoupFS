# eulerfs

### Description
a new NVDIMM filesystem

### Designs

#### Soft Update

#### Directory Organization

#### Content Oblivious Allocator

### Supported Features

### Building and Using eulerfs

#### Requirement

To build eulerfs, build the kernel with LIBNVDIMM (CONFIG_LIBNVDIMM), PMEM (CONFIG_BLK_DEV_PMEM) and DAX (CONFIG_FS_DAX)

Euelrfs is developed under kernel version v5.10, other kernel version might need some adaptation.

#### Building with current kernel

just run make

#### Building with other kernel

Modify Makefile, change the $KSRC to kernel src dir, and then run make

#### Using eulerfs

Eulerfs runs on a pmem non-volatile memory region, if your system has pmem block devcie, you can initialize a NOVA instance with the following commands:

`insmod eulerfs.ko`

`mount -t eulerfs -o init /dev/pmem0 /mnt/ramdisk`


The above commands create a eulerfs instance on `/dev/pmem0` and mounts it on `/mnt/ramdisk`.