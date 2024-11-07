# Use the base image
FROM mcr.microsoft.com/playwright:v1.39.0-jammy

# Install a specific npm version and yarn globally
RUN npm install -g netlify-cli server
RUN apt update
RUN apt install jq -y
