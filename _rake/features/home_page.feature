Feature: Hanoi home page
  In order to play the hanoi game
  As a player
  I want to see the welcome page of the game


Scenario: View home page
  Given I am on the home page
  Then I should see "Hanoi"
  And  I should see "Play"
