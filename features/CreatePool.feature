@backlog
Feature: Create Pool
  As a Pool Admin
  I want to create Pools
  So that users can participate in Pools

  Scenario: Create Pool page exists
    Given I am logged in as a pool admin
    When I get /pool/create/
    Then I will see a pool creation page

  Scenario: Can create pools
    Given I am logged in as a pool admin 456
    When I post pool details to /pool/create/
    Then I will create a pool
     And be redirected to /pool/<poolid>/
     And I will see the pool profile

  Scenario: Pool creation requires login
    Given I am not logged in
    When I get /pool/create/
    Then I will be redirected back to /login/

  Scenario: Only pool admins can create pools
    Given I am logged in as a pool user 123
    When I get /pool/create/
    Then I will be redirected back to my profile page /user/123/