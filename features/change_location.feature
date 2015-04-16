Feature:
  As a user
  I want to perform an action
  So that I can achieve a business goal

  Scenario: scenario description
    Given I am on TicketFly home page using CHROME
    When I change the location to Canada then All Canada
    Then the default location is Canada

    Given I am on TicketFly home page using FIREFOX
    When I change the location to Canada then All Canada
    Then the default location is Canada

    Given I am on TicketFly home page using SAFARI
    When I change the location to Canada then All Canada
    Then the default location is Canada

    Given I am on TicketFly home page using HEADLESS_MAC
    When I change the location to Canada then All Canada
    Then the default location is Canada