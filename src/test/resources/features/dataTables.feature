Feature: Examples of Cucumber data table implementation


  Scenario: List of fruits i like
    Then user should see fruits I like
      | kiwi     |
      | banana   |
      | cucumber |
      | orange   |
      | mango    |
      | grape    |

    #control + alt + L ==> to beautify the pipes above


  Scenario: User should be able to see all 12 months in months
  dropdown
    Given User is on the dropdowns page of practice tool
    Then User should see below info in month dropdown
      | January   |
      | February  |
      | March     |
      | April     |
      | May       |
      | June      |
      | July      |
      | August    |
      | September |
      | October   |
      | November  |
      | December  |