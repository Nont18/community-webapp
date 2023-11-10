Feature: Links

    Scenario: Get course info

    Anyone should be able to see the list of students working on link

    Given There is a links page
    When I visit the main link page
    Then I should see the list of students
    When I click comment
    Then The page should show some of comment
