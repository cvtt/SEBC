1
----

```
$ nano /proc/sys/vm/swappiness
$ cat /proc/sys/vm/swappiness
1
```
$ grep vm. /etc/sysctl.conf
vm.swappiness=1
```

2
---
```
$ nano /etc/fstab 
/dev/xvdb      /data/disk01/    ext3    defaults
/dev/xvdc      /data/disk02/    ext3    defaults

$ mkdir -p /data/disk01
$ mkdir -p /data/disk02
$ mount -a
$ lsblk
NAME    MAJ:MIN RM  SIZE RO TYPE MOUNTPOINT
xvda    202:0    0   38G  0 disk 
`-xvda1 202:1    0   38G  0 part /
xvdb    202:16   0 37.5G  0 disk /data/disk01
xvdc    202:32   0 37.5G  0 disk /data/disk02
```
3
---
```
tune2fs 1.41.12 (17-May-2010)
Filesystem volume name:   <none>
Last mounted on:          <not available>
Filesystem UUID:          ba7526cb-f40c-44be-8f05-53adecd2f055
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
**Reserved block count:     0**
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
Filesystem created:       Sat May 23 06:43:53 2015
Last mount time:          Tue Nov 15 22:05:51 2016
Last write time:          Tue Nov 15 22:05:51 2016
Mount count:              2
Maximum mount count:      -1
Last checked:             Sat May 23 06:43:53 2015
Check interval:           0 (<none>)
Reserved blocks uid:      0 (user root)
Reserved blocks gid:      0 (group root)
First inode:              11
Inode size:	          256
Required extra isize:     28
Desired extra isize:      28
Journal inode:            8
Default directory hash:   half_md4
Directory Hash Seed:      a6a82b05-f8ce-437c-b30e-8a7fe85197b9
Journal backup:           inode blocks
```
4
---
```
$ echo never > /sys/kernel/mm/transparent_hugepage/enabled
$ echo never > /sys/kernel/mm/transparent_hugepage/defrag
$ nano /etc/rc.local 
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
[root@ip-10-145-13-70 centos]# ip route
10.145.13.64/26 dev eth0  proto kernel  scope link  src 10.145.13.70 
default via 10.145.13.65 dev eth0

[root@ip-10-145-13-70 centos]# cat /etc/sysconfig/network-scripts/ifcfg-eth0
DEVICE="eth0"
BOOTPROTO="dhcp"
IPV6INIT="yes"
MTU="1500"
NM_CONTROLLED="yes"
ONBOOT="yes"
TYPE="Ethernet"
UUID="52658143-fe10-477a-861f-410a6e8f57e4"

[root@ip-10-145-13-70 centos]# cat /etc/sysconfig/network-scripts/ifcfg-eth0
DEVICE="eth0"
BOOTPROTO="dhcp"
IPV6INIT="yes"
MTU="1500"
NM_CONTROLLED="yes"
ONBOOT="yes"
TYPE="Ethernet"
UUID="52658143-fe10-477a-861f-410a6e8f57e4"
[root@ip-10-145-13-70 centos]# İFCONFİG ETH0
bash: İFCONFİG: command not found
[root@ip-10-145-13-70 centos]# ifconfig eth0
eth0      Link encap:Ethernet  HWaddr 22:00:0B:0D:13:76  
          inet addr:10.145.13.70  Bcast:10.145.13.127  Mask:255.255.255.192
          inet6 addr: fe80::2000:bff:fe0d:1376/64 Scope:Link
          UP BROADCAST RUNNING MULTICAST  MTU:1500  Metric:1
          RX packets:164694 errors:0 dropped:0 overruns:0 frame:0
          TX packets:59062 errors:0 dropped:0 overruns:0 carrier:0
          collisions:0 txqueuelen:1000 
          RX bytes:207113007 (197.5 MiB)  TX bytes:18697317 (17.8 MiB)
          Interrupt:143 
```

6
---
```
sudo yum -y install dnsmasq
/etc/init.d/dnsmasq start
nano /etc/resolv.conf
nameserver 127.0.0.1

[root@ip-10-145-13-70 centos]# getent hosts ip-10-145-13-70.ec2.internal
10.145.13.70    ip-10-145-13-70.ec2.internal

[root@ip-10-145-13-70 centos]# nslookup ip-10-145-13-70.ec2.internal
Server:		172.16.0.23
Address:	172.16.0.23#53

Non-authoritative answer:
Name:	ip-10-145-13-70.ec2.internal
Address: 10.145.13.70


```
7
---
```
$ service nscd status
nscd (pid 1355) is running...

$ service ntpd status
ntpd (pid  1434) is running...
```

