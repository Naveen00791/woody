# Use the official Nginx base image from Docker Hub
FROM nginx:latest

# Copy your HTML files into the Nginx default web root directory
COPY ./path/to/your/html/files /usr/share/nginx/html

# Expose port 80 for HTTP traffic (the default port for Nginx)
EXPOSE 80

# Command to start Nginx when the container runs
CMD ["nginx", "-g", "daemon off;"]

