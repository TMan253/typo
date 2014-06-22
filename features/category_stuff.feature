Feature:  Category Actions
  As a blogger
  In order to organize my posts
  I should be able to create and edit categories
  
  Background:
    Given the blog is set up
    And I am logged into the admin panel
  
  Scenario:  Categories link works
    When I follow "Categories"
    Then I should be on the Categories page
     And I should see "Categories"
     And I should see "Title"
     And I should see "Description"
     And I should see "Permalink"
     And I should see "Keywords"
     And the payload should contain "category_container"
  
  Scenario:  Categories page displays newly-saved category
    When I follow "Categories"
     And I fill in "category1" for "Name"
     And I fill in "description1" for "Description"
     And I press "Save"
    Then I should be on the Categories page
     And I should see "category1"
     And I should see "description1"


