#!/bin/bash
/tmp/task2/avgs.sh > /tmp/task2/avgs/`date +\%Y-\%m-\%d_\%H:\%M:\%S`.txt
/tmp/task2/htmlscripts/index.sh > /var/www/html/index.html
/tmp/task2/htmlscripts/cpu.sh > /var/www/html/cpu.html
/tmp/task2/htmlscripts/mem.sh > /var/www/html/mem.html
/tmp/task2/htmlscripts/disk.sh > /var/www/html/disk.html

