Feature: Create Category
  As an author
  I want to create categories
  To categorize my block

  Scenario: Create a new category
    Given the blog is set up 
    And I am logged into the admin panel
    Given I am on the new categories page
    And I fill in "category_name" with "Haha"
    And I press "Save"
    Then I should see "Haha"

  Scenario: Create a new category
    Given the blog is set up 
    And I am logged into the admin panel
    Given I am on the new categories page
    And I fill in "category_name" with "Well"
    And I press "Save"
    Then I should not see "Category was successfully created"