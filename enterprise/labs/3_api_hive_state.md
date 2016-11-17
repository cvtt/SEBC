Start
---

```
[root@ip-10-145-13-70 tmp]# curl -X POST -u cvtt:cloudera 'http://ip-10-145-13-70:7180/api/v1/clusters/CVTT/services/hive/commands/start'
{
  "id" : 392,
  "name" : "Start",
  "startTime" : "2016-11-16T23:53:33.425Z",
  "active" : true,
  "serviceRef" : {
    "clusterName" : "cluster",
    "serviceName" : "hive"
  }
}

```

Stop
---

```

[root@ip-10-145-13-70 tmp]# curl -X POST -u cvtt:cloudera 'http://ip-10-145-13-70:7180/api/v1/clusters/CVTT/services/hive/commands/stop'
{
  "id" : 397,
  "name" : "Stop",
  "startTime" : "2016-11-16T23:55:01.847Z",
  "active" : true,
  "serviceRef" : {
    "clusterName" : "cluster",
    "serviceName" : "hive"
  }
}

```

Status 
---

```



```