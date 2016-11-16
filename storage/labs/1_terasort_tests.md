# TERAGEN

[root@ip-10-145-13-70 centos]# time sudo -u cvtt hadoop jar /opt/cloudera/parcels/CDH-5.8.2-1.cdh5.8.2.p0.3/lib/hadoop-mapreduce/hadoop-mapreduce-examples.jar teragen -D dfs.block.size=32000000 100000000 /user/cvtt/teragen
16/11/16 01:30:36 INFO client.RMProxy: Connecting to ResourceManager at ip-10-147-23-91.ec2.internal/10.147.23.91:8032
16/11/16 01:30:36 INFO terasort.TeraSort: Generating 100000000 using 2
16/11/16 01:30:36 INFO mapreduce.JobSubmitter: number of splits:2
16/11/16 01:30:36 INFO Configuration.deprecation: dfs.block.size is deprecated. Instead, use dfs.blocksize
16/11/16 01:30:36 INFO mapreduce.JobSubmitter: Submitting tokens for job: job_1479256024940_0004
16/11/16 01:30:37 INFO impl.YarnClientImpl: Submitted application application_1479256024940_0004
16/11/16 01:30:37 INFO mapreduce.Job: The url to track the job: http://ip-10-147-23-91.ec2.internal:8088/proxy/application_1479256024940_0004/
16/11/16 01:30:37 INFO mapreduce.Job: Running job: job_1479256024940_0004
16/11/16 01:30:43 INFO mapreduce.Job: Job job_1479256024940_0004 running in uber mode : false
16/11/16 01:30:43 INFO mapreduce.Job:  map 0% reduce 0%
16/11/16 01:30:54 INFO mapreduce.Job:  map 8% reduce 0%
16/11/16 01:30:57 INFO mapreduce.Job:  map 12% reduce 0%
16/11/16 01:31:00 INFO mapreduce.Job:  map 17% reduce 0%
16/11/16 01:31:03 INFO mapreduce.Job:  map 22% reduce 0%
16/11/16 01:31:06 INFO mapreduce.Job:  map 27% reduce 0%
16/11/16 01:31:09 INFO mapreduce.Job:  map 32% reduce 0%
16/11/16 01:31:12 INFO mapreduce.Job:  map 36% reduce 0%
16/11/16 01:31:15 INFO mapreduce.Job:  map 41% reduce 0%
16/11/16 01:31:18 INFO mapreduce.Job:  map 45% reduce 0%
16/11/16 01:31:21 INFO mapreduce.Job:  map 49% reduce 0%
16/11/16 01:31:24 INFO mapreduce.Job:  map 54% reduce 0%
16/11/16 01:31:27 INFO mapreduce.Job:  map 58% reduce 0%
16/11/16 01:31:30 INFO mapreduce.Job:  map 63% reduce 0%
16/11/16 01:31:33 INFO mapreduce.Job:  map 68% reduce 0%
16/11/16 01:31:36 INFO mapreduce.Job:  map 72% reduce 0%
16/11/16 01:31:39 INFO mapreduce.Job:  map 78% reduce 0%
16/11/16 01:31:42 INFO mapreduce.Job:  map 83% reduce 0%
16/11/16 01:31:46 INFO mapreduce.Job:  map 88% reduce 0%
16/11/16 01:31:49 INFO mapreduce.Job:  map 93% reduce 0%
16/11/16 01:31:52 INFO mapreduce.Job:  map 97% reduce 0%
16/11/16 01:31:53 INFO mapreduce.Job:  map 100% reduce 0%
16/11/16 01:31:53 INFO mapreduce.Job: Job job_1479256024940_0004 completed successfully
16/11/16 01:31:53 INFO mapreduce.Job: Counters: 31
	File System Counters
		FILE: Number of bytes read=0
		FILE: Number of bytes written=243946
		FILE: Number of read operations=0
		FILE: Number of large read operations=0
		FILE: Number of write operations=0
		HDFS: Number of bytes read=170
		HDFS: Number of bytes written=10000000000
		HDFS: Number of read operations=8
		HDFS: Number of large read operations=0
		HDFS: Number of write operations=4
	Job Counters 
		Launched map tasks=2
		Other local map tasks=2
		Total time spent by all maps in occupied slots (ms)=137173
		Total time spent by all reduces in occupied slots (ms)=0
		Total time spent by all map tasks (ms)=137173
		Total vcore-seconds taken by all map tasks=137173
		Total megabyte-seconds taken by all map tasks=140465152
	Map-Reduce Framework
		Map input records=100000000
		Map output records=100000000
		Input split bytes=170
		Spilled Records=0
		Failed Shuffles=0
		Merged Map outputs=0
		GC time elapsed (ms)=1040
		CPU time spent (ms)=136050
		Physical memory (bytes) snapshot=393412608
		Virtual memory (bytes) snapshot=3139530752
		Total committed heap usage (bytes)=470286336
	org.apache.hadoop.examples.terasort.TeraGen$Counters
		CHECKSUM=214760662691937609
	File Input Format Counters 
		Bytes Read=0
	File Output Format Counters 
		Bytes Written=10000000000

real	1m20.402s
user	0m5.791s
sys	0m0.292s



#TERASORT

[root@ip-10-145-13-70 centos]# time sudo -u cvtt  hadoop jar /opt/cloudera/parcels/CDH/lib/hadoop-mapreduce/hadoop-mapreduce-examples.jar terasort /user/cvtt/teragen /user/cvtt/terasort
16/11/16 01:32:06 INFO terasort.TeraSort: starting
16/11/16 01:32:08 INFO input.FileInputFormat: Total input paths to process : 2
Spent 207ms computing base-splits.
Spent 6ms computing TeraScheduler splits.
Computing input splits took 214ms
Sampling 10 splits of 314
Making 8 from 100000 sampled records
Computing parititions took 1031ms
Spent 1247ms computing partitions.
16/11/16 01:32:09 INFO client.RMProxy: Connecting to ResourceManager at ip-10-147-23-91.ec2.internal/10.147.23.91:8032
16/11/16 01:32:09 INFO mapreduce.JobSubmitter: number of splits:314
16/11/16 01:32:09 INFO mapreduce.JobSubmitter: Submitting tokens for job: job_1479256024940_0005
16/11/16 01:32:10 INFO impl.YarnClientImpl: Submitted application application_1479256024940_0005
16/11/16 01:32:10 INFO mapreduce.Job: The url to track the job: http://ip-10-147-23-91.ec2.internal:8088/proxy/application_1479256024940_0005/
16/11/16 01:32:10 INFO mapreduce.Job: Running job: job_1479256024940_0005
16/11/16 01:32:16 INFO mapreduce.Job: Job job_1479256024940_0005 running in uber mode : false
16/11/16 01:32:16 INFO mapreduce.Job:  map 0% reduce 0%
16/11/16 01:32:25 INFO mapreduce.Job:  map 1% reduce 0%
16/11/16 01:32:27 INFO mapreduce.Job:  map 3% reduce 0%
16/11/16 01:32:32 INFO mapreduce.Job:  map 4% reduce 0%
16/11/16 01:32:36 INFO mapreduce.Job:  map 5% reduce 0%
16/11/16 01:32:38 INFO mapreduce.Job:  map 6% reduce 0%
16/11/16 01:32:40 INFO mapreduce.Job:  map 7% reduce 0%
16/11/16 01:32:46 INFO mapreduce.Job:  map 8% reduce 0%
16/11/16 01:32:47 INFO mapreduce.Job:  map 9% reduce 0%
16/11/16 01:32:48 INFO mapreduce.Job:  map 10% reduce 0%
16/11/16 01:32:54 INFO mapreduce.Job:  map 11% reduce 0%
16/11/16 01:32:56 INFO mapreduce.Job:  map 12% reduce 0%
16/11/16 01:32:57 INFO mapreduce.Job:  map 13% reduce 0%
16/11/16 01:33:02 INFO mapreduce.Job:  map 14% reduce 0%
16/11/16 01:33:05 INFO mapreduce.Job:  map 15% reduce 0%
16/11/16 01:33:07 INFO mapreduce.Job:  map 16% reduce 0%
16/11/16 01:33:10 INFO mapreduce.Job:  map 17% reduce 0%
16/11/16 01:33:15 INFO mapreduce.Job:  map 18% reduce 0%
16/11/16 01:33:16 INFO mapreduce.Job:  map 19% reduce 0%
16/11/16 01:33:17 INFO mapreduce.Job:  map 20% reduce 0%
16/11/16 01:33:23 INFO mapreduce.Job:  map 21% reduce 0%
16/11/16 01:33:25 INFO mapreduce.Job:  map 22% reduce 0%
16/11/16 01:33:27 INFO mapreduce.Job:  map 23% reduce 0%
16/11/16 01:33:30 INFO mapreduce.Job:  map 24% reduce 0%
16/11/16 01:33:35 INFO mapreduce.Job:  map 25% reduce 0%
16/11/16 01:33:37 INFO mapreduce.Job:  map 26% reduce 0%
16/11/16 01:33:38 INFO mapreduce.Job:  map 27% reduce 0%
16/11/16 01:33:44 INFO mapreduce.Job:  map 28% reduce 0%
16/11/16 01:33:45 INFO mapreduce.Job:  map 29% reduce 0%
16/11/16 01:33:47 INFO mapreduce.Job:  map 30% reduce 0%
16/11/16 01:33:52 INFO mapreduce.Job:  map 31% reduce 0%
16/11/16 01:33:53 INFO mapreduce.Job:  map 32% reduce 0%
16/11/16 01:33:57 INFO mapreduce.Job:  map 33% reduce 0%
16/11/16 01:33:59 INFO mapreduce.Job:  map 34% reduce 0%
16/11/16 01:34:04 INFO mapreduce.Job:  map 35% reduce 0%
16/11/16 01:34:05 INFO mapreduce.Job:  map 36% reduce 0%
16/11/16 01:34:07 INFO mapreduce.Job:  map 37% reduce 0%
16/11/16 01:34:12 INFO mapreduce.Job:  map 38% reduce 0%
16/11/16 01:34:14 INFO mapreduce.Job:  map 39% reduce 0%
16/11/16 01:34:18 INFO mapreduce.Job:  map 40% reduce 0%
16/11/16 01:34:21 INFO mapreduce.Job:  map 41% reduce 0%
16/11/16 01:34:24 INFO mapreduce.Job:  map 42% reduce 0%
16/11/16 01:34:26 INFO mapreduce.Job:  map 43% reduce 0%
16/11/16 01:34:30 INFO mapreduce.Job:  map 44% reduce 0%
16/11/16 01:34:31 INFO mapreduce.Job:  map 45% reduce 0%
16/11/16 01:34:35 INFO mapreduce.Job:  map 46% reduce 0%
16/11/16 01:34:39 INFO mapreduce.Job:  map 47% reduce 0%
16/11/16 01:34:41 INFO mapreduce.Job:  map 48% reduce 0%
16/11/16 01:34:44 INFO mapreduce.Job:  map 49% reduce 0%
16/11/16 01:34:48 INFO mapreduce.Job:  map 50% reduce 0%
16/11/16 01:34:49 INFO mapreduce.Job:  map 51% reduce 0%
16/11/16 01:34:54 INFO mapreduce.Job:  map 52% reduce 0%
16/11/16 01:34:55 INFO mapreduce.Job:  map 53% reduce 0%
16/11/16 01:34:57 INFO mapreduce.Job:  map 54% reduce 0%
16/11/16 01:35:01 INFO mapreduce.Job:  map 55% reduce 0%
16/11/16 01:35:04 INFO mapreduce.Job:  map 56% reduce 0%
16/11/16 01:35:07 INFO mapreduce.Job:  map 57% reduce 0%
16/11/16 01:35:10 INFO mapreduce.Job:  map 58% reduce 0%
16/11/16 01:35:12 INFO mapreduce.Job:  map 59% reduce 0%
16/11/16 01:35:17 INFO mapreduce.Job:  map 60% reduce 0%
16/11/16 01:35:18 INFO mapreduce.Job:  map 61% reduce 0%
16/11/16 01:35:23 INFO mapreduce.Job:  map 62% reduce 0%
16/11/16 01:35:25 INFO mapreduce.Job:  map 63% reduce 0%
16/11/16 01:35:28 INFO mapreduce.Job:  map 64% reduce 0%
16/11/16 01:35:30 INFO mapreduce.Job:  map 65% reduce 0%
16/11/16 01:35:33 INFO mapreduce.Job:  map 66% reduce 0%
16/11/16 01:35:37 INFO mapreduce.Job:  map 67% reduce 0%
16/11/16 01:35:38 INFO mapreduce.Job:  map 68% reduce 0%
16/11/16 01:35:43 INFO mapreduce.Job:  map 69% reduce 0%
16/11/16 01:35:47 INFO mapreduce.Job:  map 70% reduce 0%
16/11/16 01:35:48 INFO mapreduce.Job:  map 71% reduce 0%
16/11/16 01:35:50 INFO mapreduce.Job:  map 72% reduce 0%
16/11/16 01:35:55 INFO mapreduce.Job:  map 73% reduce 0%
16/11/16 01:35:57 INFO mapreduce.Job:  map 74% reduce 0%
16/11/16 01:36:00 INFO mapreduce.Job:  map 75% reduce 0%
16/11/16 01:36:03 INFO mapreduce.Job:  map 76% reduce 0%
16/11/16 01:36:06 INFO mapreduce.Job:  map 77% reduce 0%
16/11/16 01:36:09 INFO mapreduce.Job:  map 78% reduce 0%
16/11/16 01:36:12 INFO mapreduce.Job:  map 79% reduce 0%
16/11/16 01:36:16 INFO mapreduce.Job:  map 80% reduce 0%
16/11/16 01:36:17 INFO mapreduce.Job:  map 81% reduce 0%
16/11/16 01:36:19 INFO mapreduce.Job:  map 82% reduce 0%
16/11/16 01:36:25 INFO mapreduce.Job:  map 83% reduce 0%
16/11/16 01:36:29 INFO mapreduce.Job:  map 83% reduce 3%
16/11/16 01:36:30 INFO mapreduce.Job:  map 83% reduce 5%
16/11/16 01:36:31 INFO mapreduce.Job:  map 84% reduce 6%
16/11/16 01:36:32 INFO mapreduce.Job:  map 84% reduce 7%
16/11/16 01:36:33 INFO mapreduce.Job:  map 84% reduce 8%
16/11/16 01:36:34 INFO mapreduce.Job:  map 84% reduce 11%
16/11/16 01:36:35 INFO mapreduce.Job:  map 84% reduce 13%
16/11/16 01:36:36 INFO mapreduce.Job:  map 85% reduce 13%
16/11/16 01:36:37 INFO mapreduce.Job:  map 85% reduce 14%
16/11/16 01:36:38 INFO mapreduce.Job:  map 85% reduce 15%
16/11/16 01:36:39 INFO mapreduce.Job:  map 85% reduce 16%
16/11/16 01:36:40 INFO mapreduce.Job:  map 85% reduce 17%
16/11/16 01:36:44 INFO mapreduce.Job:  map 86% reduce 18%
16/11/16 01:36:50 INFO mapreduce.Job:  map 87% reduce 18%
16/11/16 01:36:53 INFO mapreduce.Job:  map 88% reduce 18%
16/11/16 01:36:59 INFO mapreduce.Job:  map 89% reduce 18%
16/11/16 01:37:03 INFO mapreduce.Job:  map 89% reduce 19%
16/11/16 01:37:06 INFO mapreduce.Job:  map 90% reduce 19%
16/11/16 01:37:11 INFO mapreduce.Job:  map 91% reduce 19%
16/11/16 01:37:16 INFO mapreduce.Job:  map 92% reduce 19%
16/11/16 01:37:21 INFO mapreduce.Job:  map 93% reduce 19%
16/11/16 01:37:28 INFO mapreduce.Job:  map 94% reduce 19%
16/11/16 01:37:29 INFO mapreduce.Job:  map 95% reduce 20%
16/11/16 01:37:35 INFO mapreduce.Job:  map 96% reduce 20%
16/11/16 01:37:42 INFO mapreduce.Job:  map 97% reduce 20%
16/11/16 01:37:47 INFO mapreduce.Job:  map 98% reduce 20%
16/11/16 01:37:52 INFO mapreduce.Job:  map 99% reduce 20%
16/11/16 01:37:53 INFO mapreduce.Job:  map 99% reduce 21%
16/11/16 01:37:57 INFO mapreduce.Job:  map 100% reduce 21%
16/11/16 01:37:59 INFO mapreduce.Job:  map 100% reduce 29%
16/11/16 01:38:00 INFO mapreduce.Job:  map 100% reduce 33%
16/11/16 01:38:01 INFO mapreduce.Job:  map 100% reduce 37%
16/11/16 01:38:02 INFO mapreduce.Job:  map 100% reduce 45%
16/11/16 01:38:03 INFO mapreduce.Job:  map 100% reduce 46%
16/11/16 01:38:05 INFO mapreduce.Job:  map 100% reduce 48%
16/11/16 01:38:06 INFO mapreduce.Job:  map 100% reduce 49%
16/11/16 01:38:07 INFO mapreduce.Job:  map 100% reduce 51%
16/11/16 01:38:08 INFO mapreduce.Job:  map 100% reduce 53%
16/11/16 01:38:09 INFO mapreduce.Job:  map 100% reduce 56%
16/11/16 01:38:11 INFO mapreduce.Job:  map 100% reduce 61%
16/11/16 01:38:12 INFO mapreduce.Job:  map 100% reduce 62%
16/11/16 01:38:13 INFO mapreduce.Job:  map 100% reduce 63%
16/11/16 01:38:14 INFO mapreduce.Job:  map 100% reduce 65%
16/11/16 01:38:15 INFO mapreduce.Job:  map 100% reduce 66%
16/11/16 01:38:17 INFO mapreduce.Job:  map 100% reduce 69%
16/11/16 01:38:18 INFO mapreduce.Job:  map 100% reduce 70%
16/11/16 01:38:19 INFO mapreduce.Job:  map 100% reduce 71%
16/11/16 01:38:20 INFO mapreduce.Job:  map 100% reduce 75%
16/11/16 01:38:21 INFO mapreduce.Job:  map 100% reduce 76%
16/11/16 01:38:22 INFO mapreduce.Job:  map 100% reduce 77%
16/11/16 01:38:23 INFO mapreduce.Job:  map 100% reduce 78%
16/11/16 01:38:25 INFO mapreduce.Job:  map 100% reduce 79%
16/11/16 01:38:26 INFO mapreduce.Job:  map 100% reduce 83%
16/11/16 01:38:27 INFO mapreduce.Job:  map 100% reduce 84%
16/11/16 01:38:28 INFO mapreduce.Job:  map 100% reduce 88%
16/11/16 01:38:29 INFO mapreduce.Job:  map 100% reduce 90%
16/11/16 01:38:32 INFO mapreduce.Job:  map 100% reduce 92%
16/11/16 01:38:34 INFO mapreduce.Job:  map 100% reduce 93%
16/11/16 01:38:35 INFO mapreduce.Job:  map 100% reduce 94%
16/11/16 01:38:37 INFO mapreduce.Job:  map 100% reduce 96%
16/11/16 01:38:40 INFO mapreduce.Job:  map 100% reduce 97%
16/11/16 01:38:41 INFO mapreduce.Job:  map 100% reduce 98%
16/11/16 01:38:43 INFO mapreduce.Job:  map 100% reduce 99%
16/11/16 01:38:44 INFO mapreduce.Job:  map 100% reduce 100%
16/11/16 01:38:45 INFO mapreduce.Job: Job job_1479256024940_0005 completed successfully
16/11/16 01:38:45 INFO mapreduce.Job: Counters: 49
	File System Counters
		FILE: Number of bytes read=4477678495
		FILE: Number of bytes written=8892282730
		FILE: Number of read operations=0
		FILE: Number of large read operations=0
		FILE: Number of write operations=0
		HDFS: Number of bytes read=10000042704
		HDFS: Number of bytes written=10000000000
		HDFS: Number of read operations=966
		HDFS: Number of large read operations=0
		HDFS: Number of write operations=16
	Job Counters 
		Launched map tasks=314
		Launched reduce tasks=8
		Data-local map tasks=314
		Total time spent by all maps in occupied slots (ms)=2247249
		Total time spent by all reduces in occupied slots (ms)=734792
		Total time spent by all map tasks (ms)=2247249
		Total time spent by all reduce tasks (ms)=734792
		Total vcore-seconds taken by all map tasks=2247249
		Total vcore-seconds taken by all reduce tasks=734792
		Total megabyte-seconds taken by all map tasks=2301182976
		Total megabyte-seconds taken by all reduce tasks=752427008
	Map-Reduce Framework
		Map input records=100000000
		Map output records=100000000
		Map output bytes=10200000000
		Map output materialized bytes=4374845645
		Input split bytes=42704
		Combine input records=0
		Combine output records=0
		Reduce input groups=100000000
		Reduce shuffle bytes=4374845645
		Reduce input records=100000000
		Reduce output records=100000000
		Spilled Records=200000000
		Shuffled Maps =2512
		Failed Shuffles=0
		Merged Map outputs=2512
		GC time elapsed (ms)=29834
		CPU time spent (ms)=1434520
		Physical memory (bytes) snapshot=153595179008
		Virtual memory (bytes) snapshot=504873615360
		Total committed heap usage (bytes)=183042048000
	Shuffle Errors
		BAD_ID=0
		CONNECTION=0
		IO_ERROR=0
		WRONG_LENGTH=0
		WRONG_MAP=0
		WRONG_REDUCE=0
	File Input Format Counters 
		Bytes Read=10000000000
	File Output Format Counters 
		Bytes Written=10000000000
16/11/16 01:38:45 INFO terasort.TeraSort: done

real	6m40.137s
user	0m10.214s
sys	0m0.442s