Feature: Sign up
    Sign up should be quick and frindly

    Scenario: Succesful sign up
     
    Given I have chosen to sign up
    When I sign up with the valid details
    Then I should receive a confirmation emial
    And I should see a personalized greeting message

