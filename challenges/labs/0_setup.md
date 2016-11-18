## Region /  OS / AMI ID

```

US East (N. Virginia)	us-east-1d

CentOS release 6.7 (Final)

ami-1c221e76



```

## Volumes (Same all nodes)

```

[root@ip-10-65-192-124 centos]# df -h
Filesystem      Size  Used Avail Use% Mounted on
/dev/xvda1       41G  793M   38G   3% /
tmpfs           7.3G     0  7.3G   0% /dev/shm
/dev/xvdb        37G  177M   37G   1% /data/disk01
/dev/xvdc        37G  177M   37G   1% /data/disk02



```


## Repo List 

```

[root@ip-10-65-192-124 centos]# yum repolist enabled
Failed to set locale, defaulting to C
Loaded plugins: fastestmirror, presto
Determining fastest mirrors
 * base: mirror.solarvps.com
 * extras: mirror.trouble-free.net
 * updates: mirrors.gigenet.com
repo id             repo name                      status
base                CentOS-6 - Base                6696
extras              CentOS-6 - Extras                62
updates             CentOS-6 - Updates              603
repolist: 7361

```



##  /etc/group

```
[root@ip-10-169-146-208 centos]# grep social /etc/group
social:x:2802:bavaria
[root@ip-10-169-146-208 centos]# grep democratic /etc/group
democratic:x:2801:saxony



```

## /etc/user

```

[root@ip-10-169-146-208 centos]# grep saxony /etc/passwd
saxony:x:2800:2800::/home/saxony:/bin/bash
[root@ip-10-169-146-208 centos]# grep bavaria /etc/passwd 
bavaria:x:2700:2700::/home/bavaria:/bin/bash

```


