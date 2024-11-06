FROM mcr.microsoft.com/playwright:v1.39.0-jammy

RUN rm -rf /root/.npm /root/.node-gyp /node_modules \
    && npm install netlify-cli node-jq
