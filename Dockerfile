FROM mcr.microsoft.com/playwright:v1.39.0-jammy

RUN npm config set cache /tmp/npm-cache --global \
    && npm install netlify-cli node-jq
