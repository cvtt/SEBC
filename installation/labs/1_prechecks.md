# ```
# Swappiness

[root@ip-172-31-56-250 ~]# cat /proc/sys/vm/swappiness
1

# noatime

[root@ip-172-31-56-250 ~]# cat /proc/mounts | grep -i /dev/xvdb
/dev/xvdb /disks/disk1 ext4 rw,noatime,nodiratime,barrier=1,data=ordered 0 0

[root@ip-172-31-56-250 ~]# cat /etc/fstab

#
# /etc/fstab
# Created by anaconda on Tue Jul 14 09:33:08 2015
#
# Accessible filesystems, by reference, are maintained under '/dev/disk'
# See man pages fstab(5), findfs(8), mount(8) and/or blkid(8) for more info
#
UUID=0e6b1614-7bbe-4d6e-bc78-a5556a123ba8 /                       ext4    defaults        1 1
tmpfs                   /dev/shm                tmpfs   defaults        0 0
devpts                  /dev/pts                devpts  gid=5,mode=620  0 0
sysfs                   /sys                    sysfs   defaults        0 0
proc                    /proc                   proc    defaults        0 0

/dev/xvdb       /disks/disk1    ext4 noatime,nodiratime 1 1 # This Drive is used for data

# Reserve Space

[root@ip-172-31-56-250 ~]# tune2fs -l /dev/xvdb | grep -i reserve
Reserved block count:     0
Reserved GDT blocks:      1021
Reserved blocks uid:      0 (user root)
Reserved blocks gid:      0 (group root)

# User limits for maximum file descriptors and processes

[root@ip-172-31-56-250 ~]# ulimit -a
core file size          (blocks, -c) 0
data seg size           (kbytes, -d) unlimited
scheduling priority             (-e) 0
file size               (blocks, -f) unlimited
pending signals                 (-i) 59649
max locked memory       (kbytes, -l) 64
max memory size         (kbytes, -m) unlimited
open files                      (-n) 1024
pipe size            (512 bytes, -p) 8
POSIX message queues     (bytes, -q) 819200
real-time priority              (-r) 0
stack size              (kbytes, -s) 10240
cpu time               (seconds, -t) unlimited
max user processes              (-u) 59649
virtual memory          (kbytes, -v) unlimited
file locks                      (-x) unlimited

# ntp and ncsd

[root@ip-172-31-56-250 ~]# service ntpd status
ntpd (pid  1574) is running...
[root@ip-172-31-56-250 ~]# service nscd status
nscd (pid 1444) is running...


