# ExaltTask2
## I've been asked to do a web page that displays the system status (CPU, Memory, Disk),one record for each per hour and the records average.
## First 
I've created the [status script](/task2/status.sh) to collect the status through some commands, then added a crontab to excute the status script every hour and store every record in a .txt file with the timestamp as it's name, you can see the files [here](/task2/status/), then created another [script to calculate the average](/task2/avgs.sh) of the records, same as before, store the average in .txt file named by the time the file was created, also you can find those files in [here](/task2/avgs/).
## Second 
I created [four scripts](/task2/htmlscripts/) each for creating an html page (Home, CPU, Memory, Disk) containing the relevant and needed information taken from the files generated by status and average scripts, in addition to other buttons. 
## Third 
The last part was creating a script to excute the previous four mentioned scripts in addition to the avarege script. this script is to be excuted manually, firstly it excutes the average script then it excutes the four scripts to create html pages.
