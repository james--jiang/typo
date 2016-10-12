Feature: Create Category
  As an author
  I want to create categories
  To categorize my block

  Scenario: Create a new category
    Given I am on the new categories page
    Then I should see "Category"
    And I should see "Category!"
