Feature: Wikipedia search functionality and verification

  #WSF-45234


  Scenario: Wikipedia Search Functionality Title Verification
    Given User is on Wikipedia home page
    When User types "Steve Jobs" in the wiki search box
    And User clicks wiki search button
    Then User sees "Steve Jobs" is in the wiki title


  Scenario: Wikipedia Search Functionality Header Verification
    Given User is on Wikipedia home page
    When User types "Steve Jobs" in the wiki search box
    And User clicks wiki search button
    Then User sees "Steve Jobs" is in the main header


  Scenario Outline: Wikipedia Search Functionality Title Verification
    Given User is on Wikipedia home page
    When User types "<searchValue>" in the wiki search box
    And User clicks wiki search button
    Then User sees "<expectedTitle>" is in the wiki title
    Then User sees "<expectedMainHeader>" is in the main header

      @a
    Examples: search values we are going to use in this scenario as below
      | searchValue  | expectedTitle | expectedMainHeader |
      | Steve Jobs   | Steve Jobs    | Steve Jobs         |
      | Bob Marley   | Bob Marley    | Bob Marley         |

      @b
    Examples:
      | searchValue  | expectedTitle | expectedMainHeader |
      | Chuck Norris | Chuck Norris  | Chuck Norris       |
      | Lady Gaga    | Lady Gaga     | Lady Gaga          |
