Latest available version of the API
----

```
$ curl -X GET -u cvtt:cloudera 'http://ip-10-145-13-70:7180/api/version'
v14

```

CM version
----

```
[root@ip-10-145-13-70 centos]# curl -X GET -u cvtt:cloudera 'http://ip-10-145-13-70:7180/api/v14/cm/version'
{
  "version" : "5.9.0",
  "buildUser" : "jenkins",
  "buildTimestamp" : "20161006-1801",
  "gitHash" : "898a5e032c080e18833dfc58180761f6ef2ea351",
  "snapshot" : false
}

```

CM users
----

```
[root@ip-10-145-13-70 centos]# curl -X GET -u cvtt:cloudera 'http://ip-10-145-13-70:7180/api/v14/users'
{
  "items" : [ {
    "name" : "admin",
    "roles" : [ "ROLE_LIMITED" ]
  }, {
    "name" : "cvtt",
    "roles" : [ "ROLE_ADMIN" ]
  }, {
    "name" : "minotaur",
    "roles" : [ "ROLE_CONFIGURATOR" ]
  } ]
}


```

Database server in use by CM
----

```

[root@ip-10-145-13-70 centos]# curl -X GET -u cvtt:cloudera 'http://ip-10-145-13-70:7180/api/v14/cm/service/roleConfigGroups/' | grep -A1 headlamp_database_host 
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
101  3845    0  3845    0     0  79934      0 --:--:-- --:--:-- --:--:-- 81808
        "name" : "headlamp_database_host",
        "value" : "ip-10-147-23-91.ec2.internal",


```
