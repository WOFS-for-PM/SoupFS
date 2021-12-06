# eulerfs

### 介绍
a new NVDIMM filesystem

### 设计

#### 软更新

#### 哈希表目录项

#### 统一的分配器

### 特性

### 编译和使用

#### 要求

内核需要使能 LIBNVDIMM (CONFIG_LIBNVDIMM), PMEM (CONFIG_BLK_DEV_PMEM) and DAX (CONFIG_FS_DAX)

eulerfs当前是基于v5.10版本内核开发的，其他版本的内核编译可能需要做一些适配

#### 使用当前内核编译

直接运行 make

#### 使用其他内核编译

修改Makefle, 将 $KSRC 设定为其他内核的源码路径，然后运行make

#### 使用eulerfs

如果系统上有pmem的块设备, 可以通过如下命令初始化eulerfs：

`insmod eulerfs.ko`

`mount -t eulerfs -o init /dev/pmem0 /mnt/ramdisk`
