Slow - Teragen
---- 

``
mapreduce.job.maps = 6 \n
mapreduce.map.memory.mb=512 \n
mapreduce.map.java.opts.max.heap=409 \n

real	30m1.498s
user	0m10.850s
sys	0m0.746s

``

Slow Terasort
---

```
mapreduce.job.maps = 6 \n
mapreduce.map.memory.mb=512 \n
mapreduce.map.java.opts.max.heap=409 \n
mapreduce.job.reduces=6 \n
mapreduce.reduce.memory.mb=512 \n
mapreduce.reduce.java.opts.max.heap=409 \n

real	0m3.250s
user	0m4.422s
sys	0m0.232s
Deleted /results/tg-10GB-6-6-512

```

Fast Teragen
---

```
mapreduce.job.maps = 6 \n
mapreduce.map.memory.mb=3000 \n
mapreduce.map.java.opts.max.heap=2400 \n

real	0m3.254s
user	0m4.011s
sys	0m0.219s

```

Fast Terasort
---

```
mapreduce.job.maps = 6 \n
mapreduce.map.memory.mb=3000 \n
mapreduce.map.java.opts.max.heap=2400 \n
mapreduce.job.reduces=6 \n
mapreduce.reduce.memory.mb=3000 \n
mapreduce.reduce.java.opts.max.heap=2400 \n

real	0m3.583s
user	0m4.195s
sys	0m0.230s
Deleted /results/tg-10GB-6-6-3000
Testing loop ended on Thu Nov 17 08:17:55 UTC 2016

```