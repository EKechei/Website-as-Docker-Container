# Use the official Nginx image from Docker Hub
FROM nginx:latest

# Set the maintainer label
LABEL maintainer="Edith Cherotich <edithcherotich32@gmail.com>"

# Copy the website content (like index.html) into the /website directory
COPY ./index.html /website/

# Copy the custom Nginx configuration file
COPY ./website.conf /etc/nginx/nginx.conf

# Expose port 80 to access the site
EXPOSE 80

# Run Nginx in the foreground to keep the container running
CMD ["nginx", "-g", "daemon off;"]

