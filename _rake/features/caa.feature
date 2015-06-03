Feature: Hanoi caa page

Scenario: Show page main layout
  Given I am on the "/moves/caa/" page
  Then I should see "Hanoi"
  And  I should see "About"

Scenario: Disks are in the correct positions
  Given I am on the "/moves/caa/" page
  Then ".disk--1" should be in ".stick--c"
  And ".disk--2" should be in ".stick--a"
  And ".disk--3" should be in ".stick--a"

Scenario: Buttons are displayed correctly
  Given I am on the "/moves/caa/" page
  Then I should see link ">" in ".links-stick--a"
  And I should see link "<" in ".links-stick--c"

Scenario: Move disk 2 from stick a to stick b
  Given I am on the "/moves/caa/" page
  When I click on ">" in ".links-stick--a"
  Then I should be on "/moves/cba/"

Scenario: Move disk 1 from stick c to stick b
  Given I am on the "/moves/caa/" page
  When I click on "<" in ".links-stick--c"
  Then I should be on "/moves/baa/"
