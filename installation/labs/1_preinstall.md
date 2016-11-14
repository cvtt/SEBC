```
On Each node -- I'm cloning my instanse so I'm applying all the changes to one node before cloning
	1. Disable selinux
		vi /etc/selinux/config
		SELINNUX=disabled
	2. Disable iptables
		chkconfig iptables off
	# -- Ideally I need to reboot here, but keep going since the node will be cloned
	3. Change hostname in /etc/systeconfig/network
	4. Populate ssh-keys
		a. Security may not be regarded here so ....
			cat id_rsa.pub >> authorized_keys
			and ...
		b. StricktHostKeyChecking no  -- was changed in /etc/ssh_config
			service sshd restart	
	5. Create a file system on a a data volume
		mkfs –t  ext4 –m 0 –O extent,dir_index,sparse_super –b 4096 –i 4194304 /dev/sdb
	6. Create a mount point
		mkdir –p /disks/disk1
	7. Add to /etc/fstab
		/dev/sdb /disks/disk1 ext4 noatime,nodiratime 1 1
	8. Mount the drive
		mount -a
	9. Create directories for NameNode, DataNode and SecondaryNameNode
		mkdir -p /disks/disk1/dfs/{nn,dn,sn}
	10. Create a directory to stage CLoudera repository
		mkdir /CM_STAGE_581
	11. Download CM repos and parcels into /CM_STAGE_581
		wget http://archive.cloudera.com/cm5/repo-as-tarball/5.8.1/cm5.8.1-centos6.tar.gz
		wget http://archive.cloudera.com/cdh5/parcels/5.8/CDH-5.8.0-1.cdh5.8.0.p0.42-el6.parcel
		wget http://archive.cloudera.com/cdh5/parcels/5.8/CDH-5.8.0-1.cdh5.8.0.p0.42-el6.parcel.sha1
		wget http://archive.cloudera.com/cdh5/parcels/5.8/manifest.json
	12. Unzip and untar CM repo
	13. Create a repo file for CM
		vi /etc/yum.repos.d/local-cloudera.repo
		[local-cm]
		baseurl=file:///CM_STAGE_581/cm/5
		gpgcheck=0
	14 Set swapinness to 1
		sysctl vm.swappiness=1
		add vm.swappiness=1 to /etc/sysctl.conf to make changes permanent
	15 Check if noatime is set for all the non root mounts
		cat /proc/mounts
	16 Check if nothing is reserved for root:
		tune2fs -l /dev/xvdb | grep -i reserve
	17 Install, start and configure nscd service at boot
		yum install nscd –assumeyes
		chkconfig nscd on
	18 Make sure ntpd service is configured and running at boot
	19. CLone your instance
		
```		
		
	
