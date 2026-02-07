# 1. Use an official Tomcat 9 image with Java 11 as the base
FROM tomcat:9.0-jdk11

# 2. Remove the default useless webapps to keep it clean (Optional)
RUN rm -rf /usr/local/tomcat/webapps/*

# 3. Copy our sample.war into the Tomcat webapps folder
# When Tomcat starts, it will automatically deploy this war.
COPY sample.war /usr/local/tomcat/webapps/ROOT.war

# 4. Expose port 8080 (The default Tomcat port)
EXPOSE 8080

# 5. Start Tomcat
CMD ["catalina.sh", "run"]
