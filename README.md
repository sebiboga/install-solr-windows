# install-solr-windows
script to automatically install solr locally in Windows


* to download SOLR from web it's used powershell command
* to unzip the archive it's used powershell command

Preconditions:
* before starting SOLR be sure you have JAVA installed on your computer

To start SOLR:
* open CMD as Administrator and run the command:
 > `SETX solr_home C:\Solr\solr-8.10.1\server\solr /M`

 then run this command:
 > `C:\Solr\solr-8.10.1\bin\solr.cmd start -p 8983`

in browser open:
 > `[http://localhost:8983/](http://localhost:8983/)`
