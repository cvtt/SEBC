## Teragen Result

```

[root@ip-10-65-192-124 centos]# time sudo -u bavaria hadoop jar /opt/cloudera/parcels/CDH/lib/hadoop-0.20-mapreduce/hadoop-examples.jar teragen -Ddfs.block.size=16777216 51200000 /user/bavaria/tgen512m
16/11/18 10:40:18 INFO client.RMProxy: Connecting to ResourceManager at ip-10-165-169-62.ec2.internal/10.165.169.62:8032
16/11/18 10:40:18 INFO terasort.TeraSort: Generating 51200000 using 2
16/11/18 10:40:18 INFO mapreduce.JobSubmitter: number of splits:2
16/11/18 10:40:18 INFO Configuration.deprecation: dfs.block.size is deprecated. Instead, use dfs.blocksize
16/11/18 10:40:19 INFO mapreduce.JobSubmitter: Submitting tokens for job: job_1479464513372_0001
16/11/18 10:40:19 INFO impl.YarnClientImpl: Submitted application application_1479464513372_0001
16/11/18 10:40:19 INFO mapreduce.Job: The url to track the job: http://ip-10-165-169-62.ec2.internal:8088/proxy/application_1479464513372_0001/
16/11/18 10:40:19 INFO mapreduce.Job: Running job: job_1479464513372_0001
16/11/18 10:40:26 INFO mapreduce.Job: Job job_1479464513372_0001 running in uber mode : false
16/11/18 10:40:26 INFO mapreduce.Job:  map 0% reduce 0%
16/11/18 10:40:38 INFO mapreduce.Job:  map 13% reduce 0%
16/11/18 10:40:41 INFO mapreduce.Job:  map 17% reduce 0%
16/11/18 10:40:42 INFO mapreduce.Job:  map 21% reduce 0%
16/11/18 10:40:44 INFO mapreduce.Job:  map 25% reduce 0%
16/11/18 10:40:45 INFO mapreduce.Job:  map 29% reduce 0%
16/11/18 10:40:47 INFO mapreduce.Job:  map 33% reduce 0%
16/11/18 10:40:48 INFO mapreduce.Job:  map 37% reduce 0%
16/11/18 10:40:50 INFO mapreduce.Job:  map 41% reduce 0%
16/11/18 10:40:51 INFO mapreduce.Job:  map 45% reduce 0%
16/11/18 10:40:53 INFO mapreduce.Job:  map 49% reduce 0%
16/11/18 10:40:54 INFO mapreduce.Job:  map 53% reduce 0%
16/11/18 10:40:56 INFO mapreduce.Job:  map 57% reduce 0%
16/11/18 10:40:57 INFO mapreduce.Job:  map 61% reduce 0%
16/11/18 10:40:59 INFO mapreduce.Job:  map 66% reduce 0%
16/11/18 10:41:00 INFO mapreduce.Job:  map 69% reduce 0%
16/11/18 10:41:02 INFO mapreduce.Job:  map 73% reduce 0%
16/11/18 10:41:03 INFO mapreduce.Job:  map 77% reduce 0%
16/11/18 10:41:05 INFO mapreduce.Job:  map 81% reduce 0%
16/11/18 10:41:06 INFO mapreduce.Job:  map 86% reduce 0%
16/11/18 10:41:08 INFO mapreduce.Job:  map 90% reduce 0%
16/11/18 10:41:09 INFO mapreduce.Job:  map 94% reduce 0%
16/11/18 10:41:12 INFO mapreduce.Job:  map 99% reduce 0%
16/11/18 10:41:13 INFO mapreduce.Job:  map 100% reduce 0%
16/11/18 10:41:13 INFO mapreduce.Job: Job job_1479464513372_0001 completed successfully
16/11/18 10:41:13 INFO mapreduce.Job: Counters: 31
	File System Counters
		FILE: Number of bytes read=0
		FILE: Number of bytes written=239166
		FILE: Number of read operations=0
		FILE: Number of large read operations=0
		FILE: Number of write operations=0
		HDFS: Number of bytes read=170
		HDFS: Number of bytes written=5120000000
		HDFS: Number of read operations=8
		HDFS: Number of large read operations=0
		HDFS: Number of write operations=4
	Job Counters 
		Launched map tasks=2
		Other local map tasks=2
		Total time spent by all maps in occupied slots (ms)=85200
		Total time spent by all reduces in occupied slots (ms)=0
		Total time spent by all map tasks (ms)=85200
		Total vcore-seconds taken by all map tasks=85200
		Total megabyte-seconds taken by all map tasks=87244800
	Map-Reduce Framework
		Map input records=51200000
		Map output records=51200000
		Input split bytes=170
		Spilled Records=0
		Failed Shuffles=0
		Merged Map outputs=0
		GC time elapsed (ms)=445
		CPU time spent (ms)=77020
		Physical memory (bytes) snapshot=371113984
		Virtual memory (bytes) snapshot=3136159744
		Total committed heap usage (bytes)=444071936
	org.apache.hadoop.examples.terasort.TeraGen$Counters
		CHECKSUM=109963291816450258
	File Input Format Counters 
		Bytes Read=0
	File Output Format Counters 
		Bytes Written=5120000000
```

## time
```

real	0m58.319s
user	0m5.810s
sys	0m0.293s


```


## hdfs dfs -ls /user/bavaria/tgen512m
```

[root@ip-10-65-192-124 centos]# hdfs dfs -ls /user/bavaria/tgen512m
Found 3 items
-rw-r--r--   3 bavaria social          0 2016-11-18 10:41 /user/bavaria/tgen512m/_SUCCESS
-rw-r--r--   3 bavaria social 2560000000 2016-11-18 10:41 /user/bavaria/tgen512m/part-m-00000
-rw-r--r--   3 bavaria social 2560000000 2016-11-18 10:41 /user/bavaria/tgen512m/part-m-00001

```

## fsck

```

[root@ip-10-65-192-124 centos]# hdfs fsck /user/bavaria/tgen512m
Connecting to namenode via http://ip-10-165-169-62.ec2.internal:50070
FSCK started by root (auth:SIMPLE) from /10.65.192.124 for path /user/bavaria/tgen512m at Fri Nov 18 10:43:33 UTC 2016
...Status: HEALTHY
 Total size:	5120000000 B
 Total dirs:	1
 Total files:	3
 Total symlinks:		0
 Total blocks (validated):	306 (avg. block size 16732026 B)
 Minimally replicated blocks:	306 (100.0 %)
 Over-replicated blocks:	0 (0.0 %)
 Under-replicated blocks:	0 (0.0 %)
 Mis-replicated blocks:		0 (0.0 %)
 Default replication factor:	3
 Average block replication:	3.0
 Corrupt blocks:		0
 Missing replicas:		0 (0.0 %)
 Number of data-nodes:		4
 Number of racks:		1
FSCK ended at Fri Nov 18 10:43:33 UTC 2016 in 13 milliseconds


The filesystem under path '/user/bavaria/tgen512m' is HEALTHY


```
