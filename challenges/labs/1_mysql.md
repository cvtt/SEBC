## mysql --version

```
[root@ip-10-181-67-168 centos]# mysql --version
mysql  Ver 14.14 Distrib 5.6.34, for Linux (x86_64) using  EditLine wrapper


```

## Show Databases;

```
mysql> SHOW DATABASES;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| hive               |
| hue                |
| mysql              |
| oozie              |
| performance_schema |
| rman               |
| scm                |
| sentry             |
+--------------------+
9 rows in set (0.00 sec)


```


## Show grants : 

```

mysql> SHOW GRANTS;
+----------------------------------------------------------------------------------------------------------------------------------------+
| Grants for root@localhost                                                                                                              |
+----------------------------------------------------------------------------------------------------------------------------------------+
| GRANT ALL PRIVILEGES ON *.* TO 'root'@'localhost' IDENTIFIED BY PASSWORD '*DE6396A8926867D249DD99DA06767130A614B5FE' WITH GRANT OPTION |
| GRANT PROXY ON ''@'' TO 'root'@'localhost' WITH GRANT OPTION                                                                           |
+----------------------------------------------------------------------------------------------------------------------------------------+
2 rows in set (0.00 sec)

```

