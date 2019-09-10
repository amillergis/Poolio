@backlog
Feature: Profile Page
  As a User
  I want to logon and have a profile page 
  So that I can join and participate in office pools

  Scenario: Login page exists
    When I get the /login page
    Then I should see a form for logging on

  Scenario: User can logon
    Given that the user 123 exists 
    When I post 123’s username and password to /login 
    Then I will be redirected to /User/123/ 
     And I should see a welcome message
