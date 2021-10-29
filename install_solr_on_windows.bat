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

if exist C:\Solr\solr-8.10.1.zip (
    echo --- solr-8.10.1.zip already exist
    
) else ( 
powershell -command "Invoke-WebRequest   -Uri 'https://dlcdn.apache.org/lucene/solr/8.10.1/solr-8.10.1.zip' -OutFile 'C:\Solr\solr-8.10.1.zip'"
)

if exist C:\Solr\solr-8.10.1 (
    echo --- C:\Solr\solr-8.10.1 already exist
    
) else ( 
powershell -command "Expand-Archive -Force 'C:\Solr\solr-8.10.1.zip' 'C:\Solr\solr-8.10.1'"
)
@echo on