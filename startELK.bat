@echo off
rem set java home dir
SETLOCAL JAVA_HOME
SET JAVA_HOME=%~dp0jre1.8.0
echo %JAVA_HOME
echo starting the ELK stack ... please wait a few seconds ....
echo starting Elastiscsearch
start "Elasticsearch" %~dp0elasticsearch-1.6\bin\elasticsearch.bat
echo starting Kibana
start "Kibana" %~dp0kibana-4.1\bin\kibana.bat
echo starting logstash
start "Logstash" %~dp0logstash-1.5\bin\logstash.bat -f %~dp0etc\logstash\conf.d
echo Time to play, enjoy
ENDLOCAL
