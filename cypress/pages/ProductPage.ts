export class ProductPage {
  static getProducReviewTab() {
    return cy.get('.reviews_tab');
  }

  static getProducDescriptionTab() {
    return cy.get('li[class*="description_tab"]');
  }

  static getProductComments() {
    return cy.get('#comments');
  }

  static getProductDescription() {
    return cy.get('#tab-description p');
  }

  static validateProductElements() {
    this.getProducDescriptionTab().click();
    this.getProductDescription().should('be.visible').and('not.be.empty');
    this.getProducReviewTab().click();
    this.getProductComments().should('exist').and('be.visible');
  }
}
