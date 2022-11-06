import { HomePage } from '../pages/HomePage';
import { ProductPage } from '../pages/ProductPage';

describe('Home Page Tests', () => {
  beforeEach(() => {
    cy.goToHomePage();
  });

  // This test case will make since the correct length is 3
  it('Home Page with three Sliders only', () => {
    HomePage.getSlider().should('have.length', 2);
  });

  it('Home page - Images in Arrivals should navigate', () => {
    HomePage.getNewArrivalsList().each(($row, $index) => {
      HomePage.getNewArrival($index).click();
      cy.url().should('include', 'product');
      ProductPage.validateProductElements();
      cy.go('back');
    });
  });
});
