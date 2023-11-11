Feature: Links

    Scenario: Get course info

    User who has account should be able to see the list of comment working on post

    Given I am user
    Given There is a post
    And post have some comments
    And I am logged in to access website
    When I visit the landing page
    Then I should see the list of emergency
    When I click comment to see the comment
    Then The page should show some of comment on that post
