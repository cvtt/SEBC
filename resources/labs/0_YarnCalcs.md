 Workload Factor changes mapreduce.job.maps
—-
```
mapreduce.job.maps = 
MIN(
	(yarn.nodemanager.resource.memory-mb/mapreduce.map.memory.mb),
    (yarn.nodemanager.resource.cpu-vcores/mapreduce.map.cpu.vcores),
	(**Worker Factor** * Worker Nodes)
)
```
When Worker Factor = 1 then 1*10 = 10 

```
mapreduce.job.maps = 10

```

But 2 3 4 5 ….
Does not affect mapreduce.job.maps because of other parameters.


