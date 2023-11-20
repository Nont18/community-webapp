Feature: Links

    Scenario: Get course info

    User who has account should be able to see the list of comment working on post

    Given I am user and admin at the same time
    Given There is a post
    And post have some comments
    And I am logged in to access website
    When I visit the landing page
    Then I should see the list of emergency
    When I click comment to see the comment
    Then The page should show some of comment on that post



    When I visit the land
    Then I should see the button which only for admin
    And I click only admin button
    Then tha page directly through Admin Zone page
    And I should see the list of post and user management
    Then I click list of user to see user who has registered
    And I can see list of them and number of users
    Then I can delete any user that I want to delete
    