# Get Tomcat8
From tomcat:8-jre8

ADD edms.war /usr/local/tomcat/webapps/edms.war

RUN mkdir /usr/pke
ADD pke.jar /usr/pke/pke.jar
ADD export.properties /usr/pke/export.properties

ADD web.xml /usr/local/tomcat/conf/web.xml

RUN mkdir /usr/pke/exports
ADD froststealer.csv /usr/pke/exports/froststealer.csv

