#!/bin/bash

# Check if nginx is already installed
if command -v nginx >/dev/null 2>&1; then
    echo "Nginx is already installed."
    exit 0
fi

echo "Nginx not found. Installing..."

# Update package list
apt-get update

# Install nginx
apt-get install -y nginx

# Check if installation succeeded
if command -v nginx >/dev/null 2>&1; then
    echo "Nginx installed successfully."
else
 i   echo "Nginx installation failed."
    exit 1
fi
