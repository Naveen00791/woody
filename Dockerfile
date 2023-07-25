# Use the official Nginx image as the base image
FROM nginx:latest

# Remove the default Nginx configuration
RUN rm /etc/nginx/conf.d/default.conf

# Copy your CSS files to the Nginx document root
COPY your-css-files-directory /usr/share/nginx/html

# (Optional) If you have other static assets, like images, you can copy them too
# COPY your-images-directory /usr/share/nginx/html/images

# (Optional) If you want to customize the Nginx configuration, you can copy your configuration file
# COPY nginx-custom.conf /etc/nginx/conf.d/

# Expose the port on which Nginx will be serving your CSS files (default Nginx port is 80)
EXPOSE 80

# Start the Nginx server when the container runs
CMD ["nginx", "-g", "daemon off;"]

