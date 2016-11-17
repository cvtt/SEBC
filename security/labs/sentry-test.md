Beeline :
---

```
[root@ip-10-145-13-70 centos]# kinit testcvtt
Password for testcvtt@CVTT.COM: 
[root@ip-10-145-13-70 centos]# beeline
Beeline version 1.1.0-cdh5.8.2 by Apache Hive
beeline> !connect jdbc:hive2://ip-10-147-23-91.ec2.internal:10000/default;principal=hive/ip-10-147-23-91.ec2.internal@HADOOP.COM
scan complete in 2ms
Connecting to jdbc:hive2://ip-10-147-23-91.ec2.internal:10000/default;principal=hive/ip-10-147-23-91.ec2.internal@HADOOP.COM
Enter username for jdbc:hive2://ip-10-147-23-91.ec2.internal:10000/default;principal=hive/ip-10-147-23-91.ec2.internal@HADOOP.COM: testcvtt
Enter password for jdbc:hive2://ip-10-147-23-91.ec2.internal:10000/default;principal=hive/ip-10-147-23-91.ec2.internal@HADOOP.COM: ********
Connected to: Apache Hive (version 1.1.0-cdh5.8.2)
Driver: Hive JDBC (version 1.1.0-cdh5.8.2)
Transaction isolation: TRANSACTION_REPEATABLE_READ
0: jdbc:hive2://ip-10-147-23-91.ec2.internal:> show tables;
INFO  : Compiling command(queryId=hive_20161117223535_0167c8dd-314b-470c-a1b6-8222d0997116): show tables
INFO  : Semantic Analysis Completed
INFO  : Returning Hive schema: Schema(fieldSchemas:[FieldSchema(name:tab_name, type:string, comment:from deserializer)], properties:null)
INFO  : Completed compiling command(queryId=hive_20161117223535_0167c8dd-314b-470c-a1b6-8222d0997116); Time taken: 0.744 seconds
INFO  : Executing command(queryId=hive_20161117223535_0167c8dd-314b-470c-a1b6-8222d0997116): show tables
INFO  : Starting task [Stage-0:DDL] in serial mode
INFO  : Completed executing command(queryId=hive_20161117223535_0167c8dd-314b-470c-a1b6-8222d0997116); Time taken: 0.267 seconds
INFO  : OK
+-----------+--+
| tab_name  |
+-----------+--+
+-----------+--+
No rows selected (2.331 seconds)


```
George
----

```

Beeline version 1.1.0-cdh5.8.2 by Apache Hive
beeline> !connect jdbc:hive2://ip-10-147-23-91.ec2.internal:10000/default;principal=hive/ip-10-147-23-91.ec2.internal@HADOOP.COM
scan complete in 3ms
Connecting to jdbc:hive2://ip-10-147-23-91.ec2.internal:10000/default;principal=hive/ip-10-147-23-91.ec2.internal@HADOOP.COM
Enter username for jdbc:hive2://ip-10-147-23-91.ec2.internal:10000/default;principal=hive/ip-10-147-23-91.ec2.internal@HADOOP.COM: george
Enter password for jdbc:hive2://ip-10-147-23-91.ec2.internal:10000/default;principal=hive/ip-10-147-23-91.ec2.internal@HADOOP.COM: **
Connected to: Apache Hive (version 1.1.0-cdh5.8.2)
Driver: Hive JDBC (version 1.1.0-cdh5.8.2)
Transaction isolation: TRANSACTION_REPEATABLE_READ
0: jdbc:hive2://ip-10-147-23-91.ec2.internal:> show tables;
INFO  : Compiling command(queryId=hive_20161117225656_836c291a-42a9-4ee9-9b77-1951d08e19a8): show tables
INFO  : Semantic Analysis Completed
INFO  : Returning Hive schema: Schema(fieldSchemas:[FieldSchema(name:tab_name, type:string, comment:from deserializer)], properties:null)
INFO  : Completed compiling command(queryId=hive_20161117225656_836c291a-42a9-4ee9-9b77-1951d08e19a8); Time taken: 0.069 seconds
INFO  : Executing command(queryId=hive_20161117225656_836c291a-42a9-4ee9-9b77-1951d08e19a8): show tables
INFO  : Starting task [Stage-0:DDL] in serial mode
INFO  : Completed executing command(queryId=hive_20161117225656_836c291a-42a9-4ee9-9b77-1951d08e19a8); Time taken: 0.122 seconds
INFO  : OK
+------------+--+
|  tab_name  |
+------------+--+
| customers  |
| sample_07  |
| sample_08  |
| web_logs   |
+------------+--+
4 rows selected (0.334 seconds)

```

Ferdinand
---

```

Beeline version 1.1.0-cdh5.8.2 by Apache Hive
beeline> !connect jdbc:hive2://ip-10-147-23-91.ec2.internal:10000/default;principal=hive/ip-10-147-23-91.ec2.internal@HADOOP.COM
scan complete in 3ms
Connecting to jdbc:hive2://ip-10-147-23-91.ec2.internal:10000/default;principal=hive/ip-10-147-23-91.ec2.internal@HADOOP.COM
Enter username for jdbc:hive2://ip-10-147-23-91.ec2.internal:10000/default;principal=hive/ip-10-147-23-91.ec2.internal@HADOOP.COM: ferdinand
Enter password for jdbc:hive2://ip-10-147-23-91.ec2.internal:10000/default;principal=hive/ip-10-147-23-91.ec2.internal@HADOOP.COM: **
Connected to: Apache Hive (version 1.1.0-cdh5.8.2)
Driver: Hive JDBC (version 1.1.0-cdh5.8.2)
Transaction isolation: TRANSACTION_REPEATABLE_READ
0: jdbc:hive2://ip-10-147-23-91.ec2.internal:> SHOW TABLES;
INFO  : Compiling command(queryId=hive_20161117230101_162b1386-a387-4dcd-ab7e-5b93e20e6455): SHOW TABLES
INFO  : Semantic Analysis Completed
INFO  : Returning Hive schema: Schema(fieldSchemas:[FieldSchema(name:tab_name, type:string, comment:from deserializer)], properties:null)
INFO  : Completed compiling command(queryId=hive_20161117230101_162b1386-a387-4dcd-ab7e-5b93e20e6455); Time taken: 0.071 seconds
INFO  : Executing command(queryId=hive_20161117230101_162b1386-a387-4dcd-ab7e-5b93e20e6455): SHOW TABLES
INFO  : Starting task [Stage-0:DDL] in serial mode
INFO  : Completed executing command(queryId=hive_20161117230101_162b1386-a387-4dcd-ab7e-5b93e20e6455); Time taken: 0.122 seconds
INFO  : OK
+------------+--+
|  tab_name  |
+------------+--+
| sample_07  |
+------------+--+

```

