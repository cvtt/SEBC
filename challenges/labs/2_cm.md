```
[root@ip-172-31-56-219 yum.repos.d]# ls -lrt
total 36
-rw-r--r--. 1 root root  529 Jun 12  2015 rhel-source.repo
-rw-r--r--. 1 root root  358 Jul 14  2015 redhat.repo
-rw-r--r--  1 root root 1440 Sep 23 09:43 mysql-community-source.repo
-rw-r--r--  1 root root 1414 Sep 23 09:43 mysql-community.repo
-rw-r--r--. 1 root root 6300 Sep 23 11:21 redhat-rhui.repo
-rw-r--r--  1 root root   80 Sep 23 11:21 rhui-load-balancers.conf
-rw-r--r--  1 root root  606 Sep 23 11:21 redhat-rhui-client-config.repo
-rw-r--r--  1 root root  115 Sep 23 11:36 local-cloudera.repo


cat local-cloudera.repo
[local-cm]
baseurl=file:///CM_STAGE_580/cm/5
gpgcheck=0


grant all on scm.* to 'scm'@'%';

2016-09-23 12:02:46,568 INFO main:com.cloudera.server.cmf.Main: Starting SCM Server. JVM Args: [-Dlog4j.configuration=file:/etc/cloudera-scm-server/log4j.properties, -Dfile.encoding=UTF-8, -Dcmf.root.logger=INFO,LOGFILE, -Dcmf.log.dir=/var/log/cloudera-scm-server, -Dcmf.log.file=cloudera-scm-server.log, -Dcmf.jetty.threshhold=WARN, -Dcmf.schema.dir=/usr/share/cmf/schema, -Djava.awt.headless=true, -Djava.net.preferIPv4Stack=true, -Dpython.home=/usr/share/cmf/python, -XX:+UseConcMarkSweepGC, -XX:+UseParNewGC, -XX:+HeapDumpOnOutOfMemoryError, -Xmx2G, -XX:MaxPermSize=256m, -XX:+HeapDumpOnOutOfMemoryError, -XX:HeapDumpPath=/tmp, -XX:OnOutOfMemoryError=kill -9 %p], Args: [], Version: 5.8.0 (#40 built by jenkins on 20160616-1319 git: 930670f7fe259b41419d74f6da78ef08c7c47c87)
[root@ip-172-31-56-219 cloudera-scm-server]# grep "Started Jetty server" /var/log/cloudera-scm-server/cloudera-scm-server.log
2016-09-23 12:04:04,521 INFO WebServerImpl:com.cloudera.server.cmf.WebServerImpl: Started Jetty server.


```