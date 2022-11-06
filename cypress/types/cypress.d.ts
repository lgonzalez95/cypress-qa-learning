// in cypress/support/index.ts
// load type definitions that come with Cypress module
/// <reference types="cypress" />

declare namespace Cypress {
  interface Chainable {
    /**
     * Goes the application home page
     */
    goToHomePage(baseUrl?: string): Chainable;
  }
}
