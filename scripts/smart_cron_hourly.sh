#check_smart.sh

#get environment information
yr=$(date +%Y)
Mo=$(date +%m)
Dy=$(date +%d)
hr=$(date +%H)

#echo $yr-$Mo-$Dy-$hr

#***************************************************
#******** find disk model and serial number
#***************************************************
# model_sda=$(hdparm -I /dev/sda |grep "Model Number")
# serial_sda=$(hdparm -I /dev/sda |grep "Serial Number")
# echo "/dev/sda: "$model_sda" | "$serial_sda

# extract disk serial number
#sdb
serial_sdb=$(hdparm -I /dev/sdb | grep 'Serial Number:') # 1~20 for "Serical Number: ", 21~41 for actual number
serial_sdb=${serial_sdb:21}
#echo ${#serial_sda} # size 20
#sdc
serial_sdc=$(hdparm -I /dev/sda | grep 'Serial Number:') # 1~20 for "Serical Number: ", 21~41 for actual number
serial_sdc=${serial_sdc:21}
#sdd
serial_sdd=$(hdparm -I /dev/sda | grep 'Serial Number:') # 1~20 for "Serical Number: ", 21~41 for actual number
serial_sdd=${serial_sdd:21}
#sde
serial_sde=$(hdparm -I /dev/sda | grep 'Serial Number:') # 1~20 for "Serical Number: ", 21~41 for actual number
serial_sde=${serial_sde:21}
# date >> /home/zfs/Desktop/smart_records/samsungSSD850.smart
# smartctl -A /dev/sda >> /home/zfs/Desktop/smart_records/samsungSSD850.smart
# date >> /home/zfs/Desktop/smart_records/INTELSSDSC2BB24.smart
# smartctl -A /dev/sdb >> /home/zfs/Desktop/smart_records/INTELSSDSC2BB24.smart
# date >> /home/zfs/Desktop/smart_records/ST31000524AS.smart
# smartctl -A /dev/sdc >> /home/zfs/Desktop/smart_records/ST31000524AS.smart

# prepare smartdata filename
timestamp=$yr-$Mo-$Dy-$hr

#get smartdata to file
smartctl -A /dev/sdb > /home/zfs/smart_records/$serial_sdb/$timestamp.smart
smartctl -A /dev/sdc > /home/zfs/smart_records/$serial_sdc/$timestamp.smart
smartctl -A /dev/sdd > /home/zfs/smart_records/$serial_sdd/$timestamp.smart
smartctl -A /dev/sde > /home/zfs/smart_records/$serial_sde/$timestamp.smart
