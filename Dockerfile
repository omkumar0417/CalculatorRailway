# Use Tomcat with JDK 21 (since your project uses Java 21)
FROM tomcat:10.1.42-jdk21

# Remove default ROOT webapp
RUN rm -rf /usr/local/tomcat/webapps/ROOT

# Copy WAR file as ROOT.war
COPY CalculatorApp.war /usr/local/tomcat/webapps/ROOT.war

# Expose port 8080 (required by Railway)
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]
