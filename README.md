# script for cron job to collect smart data on server

`crontab -e` to edit the cron job list

```
SHELL=/bin/bash
PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games

@hourly /home/zfs/SMART_cron/checkSMARThourly_v2.sh
```
configure the PATH appropriately or use program's full path when invoke.

