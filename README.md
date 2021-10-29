# install-solr-windows
script to automatically install solr locally in Windows


* to download SOLR from web it's used powershell command
* to unzip the archive it's used powershell command

Preconditions:
* before starting SOLR be sure you have JAVA installed on your computer


1. Start the batch file:
 * 01_install_solr_on_windows.bat

To start SOLR:
* open CMD as Administrator and run the command:
 > `SETX solr_home C:\Solr\solr-8.10.1\server\solr /M`

 then run this command:
 > `C:\Solr\solr-8.10.1\bin\solr.cmd start -p 8983`

 Note: DO NOT CLOSE THIS COMMAND WINDOW!!! 

in browser open:
 > [http://localhost:8983/](http://localhost:8983/)


2. Start the batch file:
 * 02_create_new_core.bat


3. Start the batch file:
 * 03_update_managed_schema.bat

 4. go to browser (where SOLR is running on localhost:8983)
 5. select CORE Admin
 6. click on reload
 7. select CORE
 8. check Schema section 
   - you have new fields added