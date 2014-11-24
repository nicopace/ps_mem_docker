DOCKERID=$1
python ps_mem.py -p `cat /sys/fs/cgroup/cpu/docker/$DOCKERID/tasks | tr "\\n" ","| sed 's/,$//g'`
