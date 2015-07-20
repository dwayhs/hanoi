Feature: Hanoi bca page

Scenario: Show page main layout
  Given I am on the "/moves/bca/" page
  Then I should see "Hanoi"
  And  I should see "About"

Scenario: Disks are in the correct positions
  Given I am on the "/moves/bca/" page
  Then ".disk--1" should be in ".stick--b"
  And ".disk--2" should be in ".stick--c"
  And ".disk--3" should be in ".stick--a"
