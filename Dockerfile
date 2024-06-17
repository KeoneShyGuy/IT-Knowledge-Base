# Use the official WordPress image as the base image
FROM wordpress:latest

# Install necessary packages
RUN apt-get update && apt-get install -y \
    git \
    vim \
    && apt-get clean

# Set the working directory
WORKDIR /var/www/html

# Expose port 80
EXPOSE 80
