Feature: Merge Articles
  As an admin
  I want to merge similar articles
  So I can group similar content

Background: articles in database
  Given the following articles exist:
    | id    | title     | body                 | author | published |
    | 100   | foo       | I like ice cream     | James  | true      |
    | 101   | bar       | chocolate is good 2  | James  | true      |
    | 102   | olk       | whatever             | Jack   | true      |

Scenario: Merge two articles

  Given the blog is set up 
  And I am logged into the admin panel
  When I am on the admin content page
  Then I should see "olk"
  And I follow "foo"
  And I fill in "merge_with" with converted value of "olk"
  And I press "Merge With This Article"
  Then I should be on the admin content page
  And I should not see "olk"
  When I follow "foo"
  Then I should see "whatever"

Scenario: Merge three articles
  Given the blog is set up 
  And I am logged into the admin panel
  When I am on the admin content page
  And I follow "olk"
  And I fill in "merge_with" with converted value of "foo"
  And I press "Merge With This Article"
  And I follow "olk"
  And I fill in "merge_with" with converted value of "bar"
  And I press "Merge With This Article"
  And I follow "olk"
  Then I should see "whatever"
  And I should see "I like ice cream"
  And I should see "chocolate is good 2"
