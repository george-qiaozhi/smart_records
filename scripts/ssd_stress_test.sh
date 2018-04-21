# 2018-04-21
# SSD Stress test
# smart data recording: ON
# zpool ready: YES

while true; do
# use dd command to read input file and dump to output dir.
# record bandwidth
dd if=/inputpool/1G_file.dat of=/outpool/output1.dat 2>> /logpool/dd.log
dd if=/inputpool/100G.dat of=/outpool/output2.dat 2>> /logpool/dd.log
dd if=/inputpool/20G.dat of=/outpool/output3.dat 2>> /logpool/dd.log
# delete file
rm /outpool/output*.dat
# sleep a while
sleep 10m
# continue
done

#./bonnie_util_rate.sh >> 12-03-2017-8G.output

