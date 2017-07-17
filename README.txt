# What is this
    This set of scripts downloads a JSON file from a website containing the fields Celcius and Farenheit and appends 
the fields and the time into a CSV file, which can then be opened in Excel/Whatever. This was only tested
to work on Windows 10, and does not work on any non-Windows OS due to use of powershell. 

	This is used with dataplicity to monitor the temperature wirelessly with a Raspberry Pi. 
Task Scheduler tasks are made to run the scripts regularly, as well as when the computer is turned on. 

# How to use
    Just run 'run.bat'. This will schedule a task called 'Get Temperature' that will run 
update.bat every 5 minutes. This will also schedule a task called 'Start Scanning' that will 
start startup this script upon system boot. 

	To modify how often the script is run, just modify 'minutes' in init.bat
	
	To modify the website to download, modify '$url' in fetch.ps1
	
	To make the script completely hidden, find the task 'Get Temperature' in Task Scheduler, 
open the task properties, check the hidden checkbox in the general tab, and check the "Run 
whether user is logged on or not" check box.

# Explanation of all scripts
    fetch.bat - calls fetch.ps1
	
	fetch.ps1 - Downloads temperature.json from the internet
	
    init.bat - Starts the 'Get Temperature' task
	
    reset.bat - Deletes all tasks, resets the data.csv file
	
    run.bat - Starts runs init.bat and makes the 'Start Scanning' task that will start startup 
	upon system boot. 
		
    update.bat - Runs fetch.bat and update.ps1
	
    update.ps1 - appends the data in the json file to data.csv
	

# How to reset/delete
    Run reset.bat to delete all tasks and reset the data.csv file.
	
# Credits
	In the file fetch.ps1, some functions were used from a blog post to download a website
with a http request. The post is found [here](http://sharpcodenotes.blogspot.com/2013/03/how-to-make-http-request-with-powershell.html).

	In the files run.bat and reset.bat, a batch script was used to request admin privileges. 
The website is found [here](https://sites.google.com/site/eneerge/scripts/batchgotadmin).

	