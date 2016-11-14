1
----

```
[root@r01n05 ~]# nano /proc/sys/vm/swappiness
[root@r01n05 ~]# cat /proc/sys/vm/swappiness
1
```
[root@r01n05 ~]# grep vm. /etc/sysctl.conf
vm.swappiness=1
```

2
---
```
[root@r01n04 centos]# nano /etc/fstab 
/dev/xvdb      /data/disk02/    ext3    defaults
/dev/xvdc      /data/disk03/    ext3    defaults

[root@r01n04 centos]# mkdir -p /data/disk02
[root@r01n04 centos]# mkdir -p /data/disk03
[root@r01n04 centos]# mount -a


[root@r01n04 centos]# lsblk
NAME    MAJ:MIN RM  SIZE RO TYPE MOUNTPOINT
xvda    202:0    0    8G  0 disk 
`-xvda1 202:1    0    8G  0 part /
xvdb    202:16   0 37.5G  0 disk /data/disk02
xvdc    202:32   0 37.5G  0 disk /data/disk03
```
3
---
```
root@r01n04 centos]# tune2fs -l /dev/xvdb
tune2fs 1.41.12 (17-May-2010)
Filesystem volume name:   <none>
Last mounted on:          <not available>
Filesystem UUID:          0ca2ab2d-0fc9-4932-b19b-db6f4528fb4d
Filesystem magic number:  0xEF53
Filesystem revision #:    1 (dynamic)
Filesystem features:      has_journal ext_attr resize_inode dir_index filetype needs_recovery sparse_super large_file
Filesystem flags:         signed_directory_hash 
Default mount options:    user_xattr acl
Filesystem state:         clean
Errors behavior:          Continue
Filesystem OS type:       Linux
Inode count:              2457600
Block count:              9828352
Reserved block count:     491417
Free blocks:              9629045
Free inodes:              2457589
First block:              0
Block size:               4096
Fragment size:            4096
Reserved GDT blocks:      1021
Blocks per group:         32768
Fragments per group:      32768
Inodes per group:         8192
Inode blocks per group:   512
Filesystem created:       Tue May 12 05:23:05 2015
Last mount time:          Mon Nov 14 16:37:16 2016
Last write time:          Mon Nov 14 16:37:16 2016
Mount count:              3
Maximum mount count:      -1
Last checked:             Tue May 12 05:23:05 2015
Check interval:           0 (<none>)
Reserved blocks uid:      0 (user root)
Reserved blocks gid:      0 (group root)
First inode:              11
Inode size:	          256
Required extra isize:     28
Desired extra isize:      28
Journal inode:            8
Default directory hash:   half_md4
Directory Hash Seed:      f659a871-88ef-4f93-b8b4-da50c6bebcac
Journal backup:           inode blocks
```
4
---
```
root@r01n05 centos]# echo never > /sys/kernel/mm/transparent_hugepage/enabled
root@r01n05 centos]# echo never > /sys/kernel/mm/transparent_hugepage/defrag
root@r01n05 centos]# nano /etc/rc.local 
if test -f /sys/kernel/mm/redhat_transparent_hugepage/enabled; then
       echo never > /sys/kernel/mm/redhat_transparent_hugepage/enabled
 fi
 if test -f /sys/kernel/mm/redhat_transparent_hugepage/defrag; then
     echo never > /sys/kernel/mm/redhat_transparent_hugepage/defrag
 fi
 ```
 5
 ---
```
root@r01n02 centos]# ip route
10.155.22.192/26 dev eth0  proto kernel  scope link  src 10.155.22.240 
default via 10.155.22.193 dev eth0 

[root@r01n02 centos]#  cat /etc/hosts
127.0.0.1   localhost localhost.localdomain localhost4 localhost4.localdomain4
::1         localhost localhost.localdomain localhost6 localhost6.localdomain6

10.234.222.139 r01n01.localdomain r01n01
10.155.22.240 r01n02.localdomain r01n02
10.71.202.220 r01n03.localdomain r01n03
10.171.134.22 r01n04.localdomain r01n04
10.168.156.46 r01n05.localdomain r01n05
```

6
---
```
[root@r01n01 centos]# getent hosts r01n01
10.234.222.139  r01n01.localdomain r01n01
```