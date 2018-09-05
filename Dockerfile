# Get Tomcat8
From tomcat:8-jre8

# Create needed Folders
RUN mkdir /usr/pke
RUN mkdir /usr/pke/exports
RUN mkdir /usr/pke/status

# Add Export functionality
ADD pke.jar /usr/pke/pke.jar
ADD export.properties /usr/pke/export.properties

# Add servlet functionality
ADD edms.war /usr/local/tomcat/webapps/edms.war
ADD web.xml /usr/local/tomcat/conf/web.xml


