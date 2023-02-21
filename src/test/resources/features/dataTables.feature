Feature: Examples of Cucumber data table implementation

  @wip
  Scenario: List of fruits i like
    Then user should see fruits I like
      | kiwi     |
      | banana   |
      | cucumber |
      | orange   |
      | mango    |
      | grape    |

    #control + alt + L ==> to beautify the pipes above