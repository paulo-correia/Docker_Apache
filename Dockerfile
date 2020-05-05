# Use an official Alpine Linux as a parent image
FROM alpine:latest

# Install or Update Apache
RUN apk --update add apache2

# Make port 80 available to the world outside this container
EXPOSE 80

# Change "It Works!" on /var/www/localhost/htdocs/index.html
RUN sed -i  's/It works!/It works on Docker!/g' /var/www/localhost/htdocs/index.html

# Run httpd service when the container launches
CMD ["httpd", "-D", "FOREGROUND"]
