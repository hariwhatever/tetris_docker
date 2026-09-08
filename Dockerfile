# Use official Ubuntu as base image
FROM ubuntu:22.04

LABEL maintainer="Tetris Docker Game"
LABEL description="Tetris game running on Ubuntu with Nginx"

# Avoid interactive prompts during package installation
ENV DEBIAN_FRONTEND=noninteractive

# Update and install nginx
RUN apt-get update && \
    apt-get install -y nginx && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Remove default nginx website
RUN rm -rf /var/www/html/*

# Copy the Tetris game files
COPY index.html /var/www/html/index.html

# Configure nginx to serve on port 80
RUN echo 'server { \n\
    listen 80; \n\
    server_name localhost; \n\
    root /var/www/html; \n\
    index index.html; \n\
    location / { \n\
        try_files $uri $uri/ =404; \n\
    } \n\
}' > /etc/nginx/sites-available/default

# Expose port 80
EXPOSE 80

# Start nginx in foreground
CMD ["nginx", "-g", "daemon off;"]
