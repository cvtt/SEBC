TERAGEN
---
```
time sudo -u hdfs hadoop jar /opt/cloudera/parcels/CDH-5.8.2-1.cdh5.8.2.p0.3/lib/hadoop-mapreduce/hadoop-mapreduce-examples.jar teragen 5000000 /tmp/cvtt/teragen
16/11/16 09:33:41 INFO client.RMProxy: Connecting to ResourceManager at ip-10-147-23-91.ec2.internal/10.147.23.91:8032
16/11/16 09:33:42 INFO terasort.TeraSort: Generating 5000000 using 2
16/11/16 09:33:42 INFO mapreduce.JobSubmitter: number of splits:2
16/11/16 09:33:42 INFO mapreduce.JobSubmitter: Submitting tokens for job: job_1479263985947_0001
16/11/16 09:33:43 INFO impl.YarnClientImpl: Submitted application application_1479263985947_0001
16/11/16 09:33:43 INFO mapreduce.Job: The url to track the job: http://ip-10-147-23-91.ec2.internal:8088/proxy/application_1479263985947_0001/
16/11/16 09:33:43 INFO mapreduce.Job: Running job: job_1479263985947_0001
16/11/16 09:33:50 INFO mapreduce.Job: Job job_1479263985947_0001 running in uber mode : false
16/11/16 09:33:50 INFO mapreduce.Job:  map 0% reduce 0%
16/11/16 09:34:00 INFO mapreduce.Job:  map 100% reduce 0%
16/11/16 09:34:00 INFO mapreduce.Job: Job job_1479263985947_0001 completed successfully
16/11/16 09:34:00 INFO mapreduce.Job: Counters: 31
	File System Counters
		FILE: Number of bytes read=0
		FILE: Number of bytes written=247486
		FILE: Number of read operations=0
		FILE: Number of large read operations=0
		FILE: Number of write operations=0
		HDFS: Number of bytes read=167
		HDFS: Number of bytes written=500000000
		HDFS: Number of read operations=8
		HDFS: Number of large read operations=0
		HDFS: Number of write operations=4
	Job Counters 
		Launched map tasks=2
		Other local map tasks=2
		Total time spent by all maps in occupied slots (ms)=16313
		Total time spent by all reduces in occupied slots (ms)=0
		Total time spent by all map tasks (ms)=16313
		Total vcore-seconds taken by all map tasks=16313
		Total megabyte-seconds taken by all map tasks=16704512
	Map-Reduce Framework
		Map input records=5000000
		Map output records=5000000
		Input split bytes=167
		Spilled Records=0
		Failed Shuffles=0
		Merged Map outputs=0
		GC time elapsed (ms)=163
		CPU time spent (ms)=13790
		Physical memory (bytes) snapshot=752173056
		Virtual memory (bytes) snapshot=3151175680
		Total committed heap usage (bytes)=876085248
	org.apache.hadoop.examples.terasort.TeraGen$Counters
		CHECKSUM=10735710707299981
	File Input Format Counters 
		Bytes Read=0
	File Output Format Counters 
		Bytes Written=500000000

real	0m21.380s
user	0m5.899s
sys	0m0.268s

```


```
sudo -u hdfs hadoop distcp -prbug webhdfs://54.242.220.142:14000/tmp/replication/iskeskin/ /tmp/iskeskin/
```
SOURCE(cvtt)
-
```
[root@ip-10-145-13-70 centos]# hdfs fsck /tmp/cvtt/ -files -blocks
Connecting to namenode via http://ip-10-145-13-70.ec2.internal:50070
FSCK started by root (auth:SIMPLE) from /10.145.13.70 for path /tmp/cvtt/ at Wed Nov 16 10:41:02 UTC 2016
/tmp/cvtt/ <dir>
/tmp/cvtt/teragen <dir>
/tmp/cvtt/teragen/_SUCCESS 0 bytes, 0 block(s):  OK

/tmp/cvtt/teragen/part-m-00000 250000000 bytes, 2 block(s):  OK
0. BP-1089345014-10.145.13.70-1479254956710:blk_1073744612_3788 len=134217728 Live_repl=3
1. BP-1089345014-10.145.13.70-1479254956710:blk_1073744614_3790 len=115782272 Live_repl=3

/tmp/cvtt/teragen/part-m-00001 250000000 bytes, 2 block(s):  OK
0. BP-1089345014-10.145.13.70-1479254956710:blk_1073744613_3789 len=134217728 Live_repl=3
1. BP-1089345014-10.145.13.70-1479254956710:blk_1073744615_3791 len=115782272 Live_repl=3

Status: HEALTHY
 Total size:	500000000 B
 Total dirs:	2
 Total files:	3
 Total symlinks:		0
 Total blocks (validated):	4 (avg. block size 125000000 B)
 Minimally replicated blocks:	4 (100.0 %)
 Over-replicated blocks:	0 (0.0 %)
 Under-replicated blocks:	0 (0.0 %)
 Mis-replicated blocks:		0 (0.0 %)
 Default replication factor:	3
 Average block replication:	3.0
 Corrupt blocks:		0
 Missing replicas:		0 (0.0 %)
 Number of data-nodes:		4
 Number of racks:		1
FSCK ended at Wed Nov 16 10:41:02 UTC 2016 in 3 milliseconds


The filesystem under path '/tmp/cvtt/' is HEALTHY


```

TARGET(iskeskin)
--

```
[root@ip-10-145-13-70 centos]# hdfs fsck /tmp/cvtt/ -files -blocks
Connecting to namenode via http://ip-10-145-13-70.ec2.internal:50070
FSCK started by root (auth:SIMPLE) from /10.145.13.70 for path /tmp/cvtt/ at Wed Nov 16 10:41:02 UTC 2016
/tmp/cvtt/ <dir>
/tmp/cvtt/teragen <dir>
/tmp/cvtt/teragen/_SUCCESS 0 bytes, 0 block(s):  OK

/tmp/cvtt/teragen/part-m-00000 250000000 bytes, 2 block(s):  OK
0. BP-1089345014-10.145.13.70-1479254956710:blk_1073744612_3788 len=134217728 Live_repl=3
1. BP-1089345014-10.145.13.70-1479254956710:blk_1073744614_3790 len=115782272 Live_repl=3

/tmp/cvtt/teragen/part-m-00001 250000000 bytes, 2 block(s):  OK
0. BP-1089345014-10.145.13.70-1479254956710:blk_1073744613_3789 len=134217728 Live_repl=3
1. BP-1089345014-10.145.13.70-1479254956710:blk_1073744615_3791 len=115782272 Live_repl=3

Status: HEALTHY
 Total size:	500000000 B
 Total dirs:	2
 Total files:	3
 Total symlinks:		0
 Total blocks (validated):	4 (avg. block size 125000000 B)
 Minimally replicated blocks:	4 (100.0 %)
 Over-replicated blocks:	0 (0.0 %)
 Under-replicated blocks:	0 (0.0 %)
 Mis-replicated blocks:		0 (0.0 %)
 Default replication factor:	3
 Average block replication:	3.0
 Corrupt blocks:		0
 Missing replicas:		0 (0.0 %)
 Number of data-nodes:		4
 Number of racks:		1
FSCK ended at Wed Nov 16 10:41:02 UTC 2016 in 3 milliseconds


The filesystem under path '/tmp/cvtt/' is HEALTHY

```