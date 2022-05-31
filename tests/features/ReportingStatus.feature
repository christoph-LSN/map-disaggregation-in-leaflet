Feature: Reporting status page

  As a site visitor
  I need to see the reporting status of all the goals
  So that I can know how complete the platform is

  Background:
    Given I am on "/reporting-status"

  Scenario: All available goals are listed
    # 4 under "Reporting status" and 4 under "Disaggregation status"
    Then I should see 8 "goal status" elements

  Scenario: Extra fields can be used to group status and are properly translated
    And I click on "the second reporting status tab"
    Then I should see "This is a non-translated custodian agency"
    And I click on "the language toggle dropdown"
    And I follow "the first language option"
    And I click on "the second reporting status tab"
    Then I should see "This is a translated custodian agency"

  Scenario: The title and description of the reporting status page can be configured
    Then I should see "My reporting status title"
    And I should see "My reporting status description"
    And I click on "the language toggle dropdown"
    And I follow "the first language option"
    Then I should see "My Spanish reporting status title"
    And I should see "My Spanish reporting status description"
