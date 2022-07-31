#!/bin/bash
echo -e "<!DOCTYPE html>
<html>
   <head>
        <h2>Memory</h2>
   </head>
   <body>
      <div class='topnav'>
         <a class='active' href='/index.html'>Home</a>
         <a href='/cpu.html'>CPU</a>
         <a href='/mem.html'>Memory</a>
         <a href='/disk.html'>Disk</a>
      </div>
      <table>
        <tr>
           <th>Time</th>
           <th>Used Memory</th>
           <th>Free Memory</th>
        </tr>
        "

        
for FILE in /tmp/task2/status/*.txt
do
FILEUSEDMEM=$(awk 'FNR==6{print $0}' $FILE)
FILEFREEMEM=$(awk 'FNR==8{print $0}' $FILE)
echo -e "<tr>
        <td>$FILE</td>
        <td>$FILEUSEDMEM</td>
        <td>$FILEFREEMEM</td>
        </tr>"
done
AVGFILENAME=$(ls -l /tmp/task2/avgs | tail -1 | awk '{print $9}')
AVGUSEDMEM=$(awk 'FNR==6{print $0}' "/tmp/task2/avgs/$AVGFILENAME")
AVGFREEMEM=$(awk 'FNR==8{print $0}' /tmp/task2/avgs/$AVGFILENAME)
echo -e "<tr>
        <td>$AVGFILENAME</td>
        <td>$AVGUSEDMEM</td>
        <td>$AVGFREEMEM</td>
</tr>"


echo -e  "</body>
</html>"

