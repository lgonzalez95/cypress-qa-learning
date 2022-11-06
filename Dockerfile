FROM cypress/browsers:node14.19.0-chrome100-ff99-edge as cypress-test-runner
WORKDIR /app
COPY package.json /app/
RUN \
    npm cache clean --force && \
    rm -rf node_modules && \
    npm install
COPY scripts ./scripts
RUN chmod -R +x ./scripts
COPY cypress ./cypress
COPY cypress.config.ts reporter-config.json ./
CMD ["npm", "run", "cy:acceptance"]
