[root@ip-10-145-13-70 centos]# cp SEBC-master.zip /tmp/
[root@ip-10-145-13-70 centos]# chown hdfs:hdfs /tmp/SEBC-master.zip 
[root@ip-10-145-13-70 centos]# sudo -u hdfs hadoop fs -put /tmp/SEBC-master.zip /tmp/
[root@ip-10-145-13-70 centos]# sudo -u hdfs  hadoop fs -mv /tmp/SEBC-master.zip /user/cvtt/precious/
[root@ip-10-145-13-70 centos]# sudo -u hdfs  hadoop fs -chown cvtt:supergroup /user/cvtt/precious/SEBC-master.zip
[root@ip-10-145-13-70 centos]# sudo -u hdfs hdfs dfsadmin -allowSnapshot /user/cvtt/precious
Allowing snaphot on /user/cvtt/precious succeeded
[root@ip-10-145-13-70 centos]# sudo -u hdfs hdfs dfs -createSnapshot /user/cvtt/precious sebc-hdfs-test
Created snapshot /user/cvtt/precious/.snapshot/sebc-hdfs-test
[root@ip-10-145-13-70 centos]# sudo -u hdfs hdfs dfs -rm -r /user/cvtt/precious/
rm: Failed to move to trash: hdfs://ip-10-145-13-70.ec2.internal:8020/user/cvtt/precious: The directory /user/cvtt/precious cannot be deleted since /user/cvtt/precious is snapshottable and already has snapshots
[root@ip-10-145-13-70 centos]# sudo -u hdfs hadoop fs -ls /user/cvtt/
Found 5 items
drwx------   - cvtt supergroup          0 2016-11-16 01:30 /user/cvtt/.Trash
drwx------   - cvtt supergroup          0 2016-11-16 01:38 /user/cvtt/.staging
drwxr-xr-x   - cvtt supergroup          0 2016-11-16 02:03 /user/cvtt/precious
drwxr-xr-x   - cvtt supergroup          0 2016-11-16 01:31 /user/cvtt/teragen
drwxr-xr-x   - cvtt supergroup          0 2016-11-16 01:38 /user/cvtt/terasort
[root@ip-10-145-13-70 centos]# sudo -u hdfs hdfs dfs -rm /user/cvtt/precious/SEBC-master.zip
16/11/16 02:10:21 INFO fs.TrashPolicyDefault: Moved: 'hdfs://ip-10-145-13-70.ec2.internal:8020/user/cvtt/precious/SEBC-master.zip' to trash at: hdfs://ip-10-145-13-70.ec2.internal:8020/user/hdfs/.Trash/Current/user/cvtt/precious/SEBC-master.zip
[root@ip-10-145-13-70 centos]# sudo -u hdfs hdfs dfs -ls /user/cvtt/precious/.snapshot
Found 1 items
drwxr-xr-x   - cvtt supergroup          0 2016-11-16 02:03 /user/cvtt/precious/.snapshot/sebc-hdfs-test
[root@ip-10-145-13-70 centos]# sudo -u hdfs hdfs dfs -cp /user/cvtt/precious/.snapshot/sebc-hdfs-test/SEBC-master.zip /user/cvtt/precious/