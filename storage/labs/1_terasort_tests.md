```
Test results for terasorts - did not see much difference either with cache pooling or without

--------- Before teragen: 2m23.476s, terasort: 4m45.211s
time hadoop jar /opt/cloudera/parcels/CDH-5.8.0-1.cdh5.8.0.p0.42/jars/hadoop-examples.jar teragen -D dfs.block.size=33554432 107374182 /user/ec2-user/sebc_hdfs_teragen_after_caching
16/09/20 16:05:50 INFO mapreduce.Job: Counters: 31
        File System Counters
                FILE: Number of bytes read=0
                FILE: Number of bytes written=240548
                FILE: Number of read operations=0
                FILE: Number of large read operations=0
                FILE: Number of write operations=0
                HDFS: Number of bytes read=170
                HDFS: Number of bytes written=10737418200
                HDFS: Number of read operations=8
                HDFS: Number of large read operations=0
                HDFS: Number of write operations=4
        Job Counters
                Launched map tasks=2
                Other local map tasks=2
                Total time spent by all maps in occupied slots (ms)=254367
                Total time spent by all reduces in occupied slots (ms)=0
                Total time spent by all map tasks (ms)=254367
                Total vcore-seconds taken by all map tasks=254367
                Total megabyte-seconds taken by all map tasks=260471808
        Map-Reduce Framework
                Map input records=107374182
                Map output records=107374182
                Input split bytes=170
                Spilled Records=0
                Failed Shuffles=0
                Merged Map outputs=0
                GC time elapsed (ms)=1513
                CPU time spent (ms)=180200
                Physical memory (bytes) snapshot=373653504
                Virtual memory (bytes) snapshot=3109904384
                Total committed heap usage (bytes)=449839104
        org.apache.hadoop.examples.terasort.TeraGen$Counters
                CHECKSUM=230593859918397906
        File Input Format Counters
                Bytes Read=0
        File Output Format Counters
                Bytes Written=10737418200

real    2m23.476s
user    0m6.598s
sys     0m0.285s


time hadoop jar /opt/cloudera/parcels/CDH-5.8.0-1.cdh5.8.0.p0.42/jars/hadoop-examples.jar terasort /user/ec2-user/sebc_hdfs_teragen_after_caching /user/ec2-user/sebc_hdfs_terasort_after_caching

16/09/20 16:13:09 INFO mapreduce.Job: Counters: 50
        File System Counters
                FILE: Number of bytes read=4807546076
                FILE: Number of bytes written=9545078520
                FILE: Number of read operations=0
                FILE: Number of large read operations=0
                FILE: Number of write operations=0
                HDFS: Number of bytes read=10737471320
                HDFS: Number of bytes written=10737418200
                HDFS: Number of read operations=984
                HDFS: Number of large read operations=0
                HDFS: Number of write operations=16
        Job Counters
                Launched map tasks=320
                Launched reduce tasks=8
                Data-local map tasks=319
                Rack-local map tasks=1
                Total time spent by all maps in occupied slots (ms)=3012750
                Total time spent by all reduces in occupied slots (ms)=674817
                Total time spent by all map tasks (ms)=3012750
                Total time spent by all reduce tasks (ms)=674817
                Total vcore-seconds taken by all map tasks=3012750
                Total vcore-seconds taken by all reduce tasks=674817
                Total megabyte-seconds taken by all map tasks=3085056000
                Total megabyte-seconds taken by all reduce tasks=691012608
        Map-Reduce Framework
                Map input records=107374182
                Map output records=107374182
                Map output bytes=10952166564
                Map output materialized bytes=4697570874
                Input split bytes=53120
                Combine input records=0
                Combine output records=0
                Reduce input groups=107374182
                Reduce shuffle bytes=4697570874
                Reduce input records=107374182
                Reduce output records=107374182
                Spilled Records=214748364
                Shuffled Maps =2560
                Failed Shuffles=0
                Merged Map outputs=2560
                GC time elapsed (ms)=36895
                CPU time spent (ms)=1566540
                Physical memory (bytes) snapshot=157250342912
                Virtual memory (bytes) snapshot=513502334976
                Total committed heap usage (bytes)=185257689088
        Shuffle Errors
                BAD_ID=0
                CONNECTION=0
                IO_ERROR=0
                WRONG_LENGTH=0
                WRONG_MAP=0
                WRONG_REDUCE=0
        File Input Format Counters
                Bytes Read=10737418200
        File Output Format Counters
                Bytes Written=10737418200
16/09/20 16:13:09 INFO terasort.TeraSort: done

real    4m45.211s
user    0m10.443s
sys     0m0.414s

------- Enabling caching

[root@ip-172-31-61-212 ~]# su - hdfs
-bash-4.1$ hdfs cacheadmin -addPool TEST_CACHING
Successfully added cache pool TEST_CACHING.
-bash-4.1$ hdfs cacheadmin -addDirective -path /user/ec2-user/sebc_hdfs_teragen_after_caching -pool TEST_CACHING
Added cache directive 1
---------------

-------- After terasort: 4m48.907s

time hadoop jar /opt/cloudera/parcels/CDH-5.8.0-1.cdh5.8.0.p0.42/jars/hadoop-examples.jar terasort /user/ec2-user/sebc_hdfs_teragen_after_caching /user/ec2-user/sebc_hdfs_terasort_after_caching
16/09/20 16:36:06 INFO mapreduce.Job: Counters: 50
        File System Counters
                FILE: Number of bytes read=4807549075
                FILE: Number of bytes written=9545086055
                FILE: Number of read operations=0
                FILE: Number of large read operations=0
                FILE: Number of write operations=0
                HDFS: Number of bytes read=10737471000
                HDFS: Number of bytes written=10737418200
                HDFS: Number of read operations=984
                HDFS: Number of large read operations=0
                HDFS: Number of write operations=16
        Job Counters
                Launched map tasks=320
                Launched reduce tasks=8
                Data-local map tasks=319
                Rack-local map tasks=1
                Total time spent by all maps in occupied slots (ms)=3037648
                Total time spent by all reduces in occupied slots (ms)=680682
                Total time spent by all map tasks (ms)=3037648
                Total time spent by all reduce tasks (ms)=680682
                Total vcore-seconds taken by all map tasks=3037648
                Total vcore-seconds taken by all reduce tasks=680682
                Total megabyte-seconds taken by all map tasks=3110551552
                Total megabyte-seconds taken by all reduce tasks=697018368
        Map-Reduce Framework
                Map input records=107374182
                Map output records=107374182
                Map output bytes=10952166564
                Map output materialized bytes=4697576394
                Input split bytes=52800
                Combine input records=0
                Combine output records=0
                Reduce input groups=107374182
                Reduce shuffle bytes=4697576394
                Reduce input records=107374182
                Reduce output records=107374182
                Spilled Records=214748364
                Shuffled Maps =2560
                Failed Shuffles=0
                Merged Map outputs=2560
                GC time elapsed (ms)=37143
                CPU time spent (ms)=1570270
                Physical memory (bytes) snapshot=156390199296
                Virtual memory (bytes) snapshot=513311985664
                Total committed heap usage (bytes)=184836161536
        Shuffle Errors
                BAD_ID=0
                CONNECTION=0
                IO_ERROR=0
                WRONG_LENGTH=0
                WRONG_MAP=0
                WRONG_REDUCE=0
        File Input Format Counters
                Bytes Read=10737418200
        File Output Format Counters
                Bytes Written=10737418200
16/09/20 16:36:06 INFO terasort.TeraSort: done

real    4m48.907s
user    0m10.458s
sys     0m0.356s

