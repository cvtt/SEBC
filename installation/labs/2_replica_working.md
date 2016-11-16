Slave Retsart Logs : 
161116 00:19:25 mysqld_safe Starting mysqld daemon with databases from /var/lib/mysql
161116  0:19:25 [Warning] Using unique option prefix key_buffer instead of key_buffer_size is deprecated and will be removed in a future release. Please use the full name instead.
161116  0:19:25 [Note] /usr/sbin/mysqld (mysqld 5.5.53-log) starting as process 1640 ...
161116  0:19:25 [Note] Plugin 'FEDERATED' is disabled.
161116  0:19:25 InnoDB: The InnoDB memory heap is disabled
161116  0:19:25 InnoDB: Mutexes and rw_locks use GCC atomic builtins
161116  0:19:25 InnoDB: Compressed tables use zlib 1.2.3
161116  0:19:25 InnoDB: Using Linux native AIO
161116  0:19:25 InnoDB: Initializing buffer pool, size = 4.0G
161116  0:19:25 InnoDB: Completed initialization of buffer pool
161116  0:19:26 InnoDB: highest supported file format is Barracuda.
161116  0:19:27  InnoDB: Waiting for the background threads to start
161116  0:19:28 InnoDB: 5.5.53 started; log sequence number 54079819
161116  0:19:28 [Note] Server hostname (bind-address): '0.0.0.0'; port: 3306
161116  0:19:28 [Note]   - '0.0.0.0' resolves to '0.0.0.0';
161116  0:19:28 [Note] Server socket created on IP: '0.0.0.0'.
161116  0:19:28 [Warning] Neither --relay-log nor --relay-log-index were used; so replication may break when this MySQL server acts as a slave and has his hostname changed!! Please use '--relay-log=mysqld-relay-bin' to avoid this problem.
161116  0:19:28 [Note] Slave SQL thread initialized, starting replication in log 'mysql_binary_log.000002' at position 41412217, relay log './mysqld-relay-bin.000004' position: 41412370
161116  0:19:28 [Note] Event Scheduler: Loaded 0 events
161116  0:19:28 [Note] /usr/sbin/mysqld: ready for connections.
Version: '5.5.53-log'  socket: '/var/lib/mysql/mysql.sock'  port: 3306  MySQL Community Server (GPL)
161116  0:19:28 [Note] Slave I/O thread: connected to master 'master_replica@ip-10-147-23-91.ec2.internal:3306',replication started in log 'mysql_binary_log.000002' at position 41412217
```
mysql> SHOW SLAVE STATUS \G
*************************** 1. row ***************************
               Slave_IO_State: Waiting for master to send event
                  Master_Host: ip-10-147-23-91.ec2.internal
                  Master_User: master_replica
                  Master_Port: 3306
                Connect_Retry: 60
              Master_Log_File: mysql_binary_log.000003
          Read_Master_Log_Pos: 3188633
               Relay_Log_File: mysqld-relay-bin.000007
                Relay_Log_Pos: 3188786
        Relay_Master_Log_File: mysql_binary_log.000003
             Slave_IO_Running: Yes
            Slave_SQL_Running: Yes
              Replicate_Do_DB: 
          Replicate_Ignore_DB: 
           Replicate_Do_Table: 
       Replicate_Ignore_Table: 
      Replicate_Wild_Do_Table: 
  Replicate_Wild_Ignore_Table: 
                   Last_Errno: 0
                   Last_Error: 
                 Skip_Counter: 0
          Exec_Master_Log_Pos: 3188633
              Relay_Log_Space: 3189096
              Until_Condition: None
               Until_Log_File: 
                Until_Log_Pos: 0
           Master_SSL_Allowed: No
           Master_SSL_CA_File: 
           Master_SSL_CA_Path: 
              Master_SSL_Cert: 
            Master_SSL_Cipher: 
               Master_SSL_Key: 
        Seconds_Behind_Master: 0
Master_SSL_Verify_Server_Cert: No
                Last_IO_Errno: 0
                Last_IO_Error: 
               Last_SQL_Errno: 0
               Last_SQL_Error: 
  Replicate_Ignore_Server_Ids: 
             Master_Server_Id: 1
1 row in set (0.00 sec)
```