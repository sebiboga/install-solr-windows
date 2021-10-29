@echo off
if exist C:\ (
    echo let's begin
    
) else echo error: C drive doesn't exist. please update this script to point to your HDD letter

if exist C:\Solr (
    echo --- Solr already exist
    
) else ( 
    
    mkdir Solr
    echo --- Solr folder created
    
    )

powershell -command "Invoke-WebRequest   -Uri 'https://dlcdn.apache.org/lucene/solr/8.10.1/solr-8.10.1.zip' -OutFile 'C:\Solr\solr-8.10.1.zip'"
powershell -command "Expand-Archive -Force 'solr-8.10.1.zip' 'solr-8.10.1'"

@echo on