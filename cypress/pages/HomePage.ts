export class HomePage {
  static getSlider() {
    return cy.get('img[class*="slide-background-image"]');
  }

  static getNewArrivalsList() {
    return cy.get('.woocommerce .products');
  }

  static getNewArrival(position: number) {
    return cy.get(`#text-22-sub_row_1-0-2-${position}-0`);
  }
}
