# Use the base image
FROM mcr.microsoft.com/playwright:v1.39.0-jammy

# Install a specific npm version and yarn globally
RUN npm install -g netlify-cli node-jq server
# Clear and reinitialize npm cache, delete node_modules and package-lock.json if present, then install packages
# RUN npm cache clean --force && \
#     npm cache verify && \
#     rm -rf node_modules package-lock.json && \
#     npm install --no-bin-links --legacy-peer-deps netlify-cli && \
#     npm install --no-bin-links --legacy-peer-deps node-jq

# Alternatively, you can install both packages with yarn if npm fails
# RUN yarn add netlify-cli node-jq
