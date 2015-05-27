Feature: Hanoi aaa page

Scenario: View aaa page
  Given I am on the "/moves/aaa" page
  Then I should see "Hanoi"
  And  I should see "About"
  And ".disk--1" should be in ".stick--a"
  And ".disk--2" should be in ".stick--a"
  And ".disk--3" should be in ".stick--a"
  And I should see link ">" in ".links-stick--a"
