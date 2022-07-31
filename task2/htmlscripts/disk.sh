#!/bin/bash
echo -e "<!DOCTYPE html>
<html>
   <head>
        <h2>Disk</h2>
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
           <th>Used Disk</th>
           <th>Free Disk</th>
        </tr>"
for FILE in /tmp/task2/status/*.txt
do
FILEUSEDDISK=$(awk 'FNR==2{print $0}' $FILE)
FILEFREEDISK=$(awk 'FNR==4{print $0}' $FILE)
echo -e "<tr>
        <td>$FILE</td>
        <td>$FILEUSEDDISK</td>
        <td>$FILEFREEDISK</td>
        </tr>"
done

AVGFILENAME=$(ls -l /tmp/task2/avgs | tail -1 | awk '{print $9}')
AVGUSEDDISK=$(awk 'FNR==2{print $0}' /tmp/task2/avgs/$AVGFILENAME)
AVGFREEDISK=$(awk 'FNR==4{print $0}' /tmp/task2/avgs/$AVGFILENAME)
echo -e "<tr>
        <td>$AVGFILENAME</td>
        <td>$AVGUSEDDISK</td>
        <td>$AVGFREEDISK</td>
</tr>"

echo -e  "</body>
</html>"

