Feature: Products

  Background:
    Given the following products
      | title | description |
      | Book  | A book      |
      | Pen   | A pen       |

  Scenario: Listing products
    And I go to the products page
    Then I should see "Book"
    And I should see "Pen"
    And I should see "A book"
    And I should see "A pen"
  
  Scenario: Showing a product
    Given I go to the product page for "Book"
    Then I should see "Book"
    And I should see "A book"
    And I should not see "Pen"

  Scenario: Creating a product
    Given I go to the products page
    And I follow "New product"    
    And I fill in "Title" with "Mousepad"
    And I fill in "Description" with "Black mousepad"
    And I press "Save"
    Then I should be on the products page
    And I should have 3 products
    And I should see "Mousepad"
    And I should see "Book"
    
  Scenario: Trying to create a product without a title
    Given I go to the products page
    And I follow "New product"
    And I fill in "Title" with ""
    And I fill in "Description" with "Black mousepad"
    And I press "Save"
    And I should have 2 products
    And I should see "Title can't be blank"
