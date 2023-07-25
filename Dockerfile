# Use the official Nginx image as the base image
FROM nginx:latest

# Remove the default Nginx configuration
RUN rm /etc/nginx/conf.d/default.conf

# Copy your web server configuration file to Nginx's configuration directory
COPY nginx.conf /etc/nginx/conf.d/

# Copy your web application files to Nginx's document root
COPY your-web-app-directory /usr/share/nginx/html

# Expose the port on which Nginx will be serving your web application (default Nginx port is 80)
EXPOSE 80

# Start the Nginx server when the container runs
CMD ["nginx", "-g", "daemon off;"]
