Slave Retsart Logs : 
161115 13:21:34 mysqld_safe mysqld from pid file /var/run/mysqld/mysqld.pid ended
161115 13:21:36 mysqld_safe Starting mysqld daemon with databases from /var/lib/mysql
161115 13:21:36 [Warning] Using unique option prefix key_buffer instead of key_buffer_size is deprecated and will be removed in a future release. Please use the full name instead.
161115 13:21:36 [Note] /usr/libexec/mysqld (mysqld 5.5.52-log) starting as process 15385 ...
161115 13:21:36 [Note] Plugin 'FEDERATED' is disabled.
161115 13:21:36 InnoDB: The InnoDB memory heap is disabled
161115 13:21:36 InnoDB: Mutexes and rw_locks use GCC atomic builtins
161115 13:21:36 InnoDB: Compressed tables use zlib 1.2.3
161115 13:21:36 InnoDB: Using Linux native AIO
161115 13:21:36 InnoDB: Initializing buffer pool, size = 4.0G
161115 13:21:36 InnoDB: Completed initialization of buffer pool
161115 13:21:36 InnoDB: highest supported file format is Barracuda.
161115 13:21:36  InnoDB: Waiting for the background threads to start
161115 13:21:37 InnoDB: 5.5.52 started; log sequence number 1595685
161115 13:21:37 [Note] Server hostname (bind-address): '10.155.22.240'; port: 3306
161115 13:21:37 [Note]   - '10.155.22.240' resolves to '10.155.22.240';
161115 13:21:37 [Note] Server socket created on IP: '10.155.22.240'.
161115 13:21:37 [Warning] Neither --relay-log nor --relay-log-index were used; so replication may break when this MySQL server acts as a slave and has his hostname changed!! Please use '--relay-log=mysqld-relay-bin' to avoid this problem.
161115 13:21:37 [Note] Slave SQL thread initialized, starting replication in log 'mysql_binary_log.000004' at position 107, relay log './mysqld-relay-bin.000001' position: 4
161115 13:21:37 [Note] Event Scheduler: Loaded 0 events
161115 13:21:37 [Note] /usr/libexec/mysqld: ready for connections.
Version: '5.5.52-log'  socket: '/var/lib/mysql/mysql.sock'  port: 3306  MySQL Community Server (GPL)
161115 13:21:37 [Note] Slave I/O thread: connected to master 'slave_user@10.234.222.139:3306',replication started in log 'mysql_binary_log.000004' at position 107

```
mysql> SHOW SLAVE STATUS \G
*************************** 1. row ***************************
               Slave_IO_State: Waiting for master to send event
                  Master_Host: 10.234.222.139
                  Master_User: slave_user
                  Master_Port: 3306
                Connect_Retry: 60
              Master_Log_File: mysql_binary_log.000007
          Read_Master_Log_Pos: 508
               Relay_Log_File: mysqld-relay-bin.000006
                Relay_Log_Pos: 661
        Relay_Master_Log_File: mysql_binary_log.000007
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
          Exec_Master_Log_Pos: 508
              Relay_Log_Space: 1681
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