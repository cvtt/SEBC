## rman

```

mysql> SHOW GRANTS FOR rman;
+-----------------------------------------------------------------------------------------------------+
| Grants for rman@%                                                                                   |
+-----------------------------------------------------------------------------------------------------+
| GRANT USAGE ON *.* TO 'rman'@'%' IDENTIFIED BY PASSWORD '*DE6396A8926867D249DD99DA06767130A614B5FE' |
| GRANT ALL PRIVILEGES ON `rman`.* TO 'rman'@'%'                                                      |
+-----------------------------------------------------------------------------------------------------+
2 rows in set (0.00 sec)


```

## hive

mysql> SHOW GRANTS FOR hive;
+-----------------------------------------------------------------------------------------------------+
| Grants for hive@%                                                                                   |
+-----------------------------------------------------------------------------------------------------+
| GRANT USAGE ON *.* TO 'hive'@'%' IDENTIFIED BY PASSWORD '*DE6396A8926867D249DD99DA06767130A614B5FE' |
| GRANT ALL PRIVILEGES ON `hive`.* TO 'hive'@'%'                                                      |
+-----------------------------------------------------------------------------------------------------+
2 rows in set (0.00 sec)


## scm

mysql> SHOW GRANTS FOR scm;
+----------------------------------------------------------------------------------------------------+
| Grants for scm@%                                                                                   |
+----------------------------------------------------------------------------------------------------+
| GRANT USAGE ON *.* TO 'scm'@'%' IDENTIFIED BY PASSWORD '*DE6396A8926867D249DD99DA06767130A614B5FE' |
+----------------------------------------------------------------------------------------------------+
1 row in set (0.00 sec)


## hdfs dfs -ls /user

```

[root@ip-10-65-192-124 centos]# hdfs dfs -ls /user
Found 6 items
drwxr-xr-x   - bavaria social              0 2016-11-18 10:26 /user/bavaria
drwxrwxrwx   - mapred  hadoop              0 2016-11-18 10:21 /user/history
drwxrwxr-t   - hive    hive                0 2016-11-18 10:22 /user/hive
drwxrwxr-x   - hue     hue                 0 2016-11-18 10:23 /user/hue
drwxrwxr-x   - oozie   oozie               0 2016-11-18 10:23 /user/oozie
drwxr-xr-x   - saxony  democratic          0 2016-11-18 10:26 /user/saxony

```

## CM-API Call - HOSTS

```

[root@ip-10-65-192-124 centos]# curl -u cvtt:bc 'http://ip-10-65-192-124.ec2.internal:7180/api/v12/hosts'
{
  "items" : [ {
    "hostId" : "i-723dd2ea",
    "ipAddress" : "10.165.169.62",
    "hostname" : "ip-10-165-169-62.ec2.internal",
    "rackId" : "/default",
    "hostUrl" : "http://ip-10-65-192-124.ec2.internal:7180/cmf/hostRedirect/i-723dd2ea",
    "maintenanceMode" : false,
    "maintenanceOwners" : [ ],
    "commissionState" : "COMMISSIONED",
    "numCores" : 4,
    "numPhysicalCores" : 2,
    "totalPhysMemBytes" : 15664750592
  }, {
    "hostId" : "i-733dd2eb",
    "ipAddress" : "10.169.146.208",
    "hostname" : "ip-10-169-146-208.ec2.internal",
    "rackId" : "/default",
    "hostUrl" : "http://ip-10-65-192-124.ec2.internal:7180/cmf/hostRedirect/i-733dd2eb",
    "maintenanceMode" : false,
    "maintenanceOwners" : [ ],
    "commissionState" : "COMMISSIONED",
    "numCores" : 4,
    "numPhysicalCores" : 2,
    "totalPhysMemBytes" : 15664750592
  }, {
    "hostId" : "i-473dd2df",
    "ipAddress" : "10.181.67.168",
    "hostname" : "ip-10-181-67-168.ec2.internal",
    "rackId" : "/default",
    "hostUrl" : "http://ip-10-65-192-124.ec2.internal:7180/cmf/hostRedirect/i-473dd2df",
    "maintenanceMode" : false,
    "maintenanceOwners" : [ ],
    "commissionState" : "COMMISSIONED",
    "numCores" : 4,
    "numPhysicalCores" : 2,
    "totalPhysMemBytes" : 15664750592
  }, {
    "hostId" : "i-dc3cd344",
    "ipAddress" : "10.47.192.35",
    "hostname" : "ip-10-47-192-35.ec2.internal",
    "rackId" : "/default",
    "hostUrl" : "http://ip-10-65-192-124.ec2.internal:7180/cmf/hostRedirect/i-dc3cd344",
    "maintenanceMode" : false,
    "maintenanceOwners" : [ ],
    "commissionState" : "COMMISSIONED",
    "numCores" : 4,
    "numPhysicalCores" : 2,
    "totalPhysMemBytes" : 15664750592
  }, {
    "hostId" : "i-463dd2de",
    "ipAddress" : "10.65.192.124",
    "hostname" : "ip-10-65-192-124.ec2.internal",
    "rackId" : "/default",
    "hostUrl" : "http://ip-10-65-192-124.ec2.internal:7180/cmf/hostRedirect/i-463dd2de",
    "maintenanceMode" : false,
    "maintenanceOwners" : [ ],
    "commissionState" : "COMMISSIONED",
    "numCores" : 4,
    "numPhysicalCores" : 2,
    "totalPhysMemBytes" : 15664750592
  } ]
}


```






