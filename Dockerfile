# Use an official Tomcat base image
FROM tomcat:9.0

# Remove default apps
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy your WAR file to the webapps directory
COPY StudentManagementSystem.war /usr/local/tomcat/webapps/ROOT.war

# Expose default port
EXPOSE 8080

# Start Tomcat server
CMD ["catalina.sh", "run"]
