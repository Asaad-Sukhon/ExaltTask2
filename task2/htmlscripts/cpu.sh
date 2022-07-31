#!/bin/bash
echo -e "<!DOCTYPE html>
<html>
   <head>
        <h2>CPU</h2>
   </head>
   <body>
      <div class="topnav">
         <a class="active" href="/index.html">Home</a>
         <a href="/cpu.html">CPU</a>
         <a href="/mem.html">Memory</a>
         <a href="/disk.html">Disk</a>
      </div>
      <table>
        <tr>
           <th>Time</th>
           <th>CPU utilization</th>
        </tr>"
for FILE in /tmp/task2/status/*.txt
do
FILECPU=$(awk 'FNR==10{print $0}' $FILE)
echo -e "<tr>
        <td>$FILE</td>
        <td>$FILECPU</td>
        </tr>"
done

AVGFILENAME=$(ls -l /tmp/task2/avgs | tail -1 | awk '{print $9}')
AVGCPU=$(awk 'FNR==10{print $0}' "/tmp/task2/avgs/$AVGFILENAME")
echo -e "<tr>
        <td>$AVGFILENAME</td>
        <td>$AVGCPU</td>
</tr>"

echo -e  "</body>
</html>"

