#!/bin/sh
# Confirm the path values given below correspond to your installation

HADOOP_MR=/opt/cloudera/parcels/CDH/lib/hadoop-0.20-mapreduce
HADOOP_PATH=/opt/cloudera/parcels/CDH/bin

# Mark start of the loop
echo Testing loop started on `date`

# Mapper containers
for i in 2    
do
   # Reducer containers
   for j in 2 
   do                 
      # Container memory
      for k in 512 1024 
      do                         
         # Set mapper JVM heap 
         MAP_MB=`echo "($k*0.8)/1" | bc` 

         # Set reducer JVM heap 
         RED_MB=`echo "($k*0.8)/1" | bc` 

	echo "Mapper containers ${i}"
	echo "Reducer containers ${j}"
	echo "Container memory ${k}"
	echo "mapper JVM heap = ${MAP_MB}"
	echo "reducer JVM heap = ${RED_MB}"
	echo " "
	
	echo "This is how much it takes me to generate the data .... .... ... "
	echo "The file size is too small (1mb), chaning to ~10g as tg-* file meant to be ..."
	# Well, need to create these directories first ...
	hadoop fs -mkdir -p /user/ec2-user/results/
        time $HADOOP_PATH/hadoop jar $HADOOP_MR/hadoop-examples.jar teragen \
                     -Dmapreduce.job.maps=$i \
                     -Dmapreduce.map.memory.mb=$k \
                     -Dmapreduce.map.java.opts.max.heap=$MAP_MB \
                     100000000 /user/ec2-user/results/tg-10GB-${i}-${j}-${k} 1>tera_${i}_${j}_${k}.out 2>tera_${i}_${j}_${k}.err                       
	echo " "
	echo "The sort time is ... ... ... ...  "
        time $HADOOP_PATH/hadoop jar $HADOOP_MR/hadoop-examples.jar terasort \
                     -Dmapreduce.job.maps=$i \
                     -Dmapreduce.job.reduces=$j \
                     -Dmapreduce.map.memory.mb=$k \
                     -Dmapreduce.map.java.opts.max.heap=$MAP_MB \
                     -Dmapreduce.reduce.memory.mb=$k \
                     -Dmapreduce.reduce.java.opts.max.heap=$RED_MB \
	             /user/ec2-user/results/tg-10GB-${i}-${j}-${k}  \
                     /user/ec2-user/results/ts-10GB-${i}-${j}-${k} 1>>tera_${i}_${j}_${k}.out 2>>tera_${i}_${j}_${k}.err                         

        $HADOOP_PATH/hadoop fs -rm -r -skipTrash /user/ec2-user/results/tg-10GB-${i}-${j}-${k}                         
        $HADOOP_PATH/hadoop fs -rm -r -skipTrash /user/ec2-user/results/ts-10GB-${i}-${j}-${k}                 
	echo "-----------------"
	echo " "
      done
   done
done

echo Testing loop ended on `date`
