# Use the base image
FROM mcr.microsoft.com/playwright:v1.39.0-jammy

# Update apt, install jq, and install global npm packages
RUN apt update && \
    apt install -y jq && \
    npm install -g netlify-cli serve
