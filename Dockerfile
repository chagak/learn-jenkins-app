FROM mcr.microsoft.com/playwright:v1.39.0-jammy

RUN npm install --no-bin-links --legacy-peer-deps netlify-cli node-jq
