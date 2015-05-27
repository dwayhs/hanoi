Feature: Hanoi baa page

Scenario: View baa page
  Given I am on the "/moves/baa/" page
  Then I should see "Hanoi"
  And  I should see "About"
  And ".disk--1" should be in ".stick--b"
  And ".disk--2" should be in ".stick--a"
  And ".disk--3" should be in ".stick--a"
  And I should see link ">" in ".links-stick--a"
  And I should see link "<" in ".links-stick--b"
  And I should see link ">" in ".links-stick--b"

Scenario: MOVE disk FROM stick a to stick c
    Given I am on the "/moves/baa/" page
    When I click on ">" in ".links-stick--a"
    Then I should be on "/moves/bca/"


Scenario: Move disk from stick b to stick a
    Given I am on the "/moves/baa/" page
    When I click on "<" in ".links-stick--b"
    Then I should be on "/moves/aaa/"

Scenario: Move disk from stick b to stick c
    Given I am on the "/moves/baa/" page
    When I click on ">" in ".links-stick--b"
    Then I should be on "/moves/caa/"
