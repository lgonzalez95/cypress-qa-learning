import { defineConfig } from 'cypress';

export default defineConfig({
  reporter: 'cypress-multi-reporters',
  reporterOptions: {
    configFile: 'reporter-config.json',
  },

  e2e: {
    baseUrl: 'https://practice.automationtesting.in/',
    setupNodeEvents(on, config) {
      // implement node event listeners here
      require('cypress-mochawesome-reporter/plugin')(on);
    },
  },
  pageLoadTimeout: 30000,
  defaultCommandTimeout: 30000,
  video: false,
  viewportWidth: 1280,
  viewportHeight: 720,
  retries: 3,
});
