#!/bin/bash

# Download Google Chrome .deb package
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb

# Install the package
sudo apt install ./google-chrome-stable_current_amd64.deb

# Clean up by removing the downloaded .deb package
rm google-chrome-stable_current_amd64.deb
