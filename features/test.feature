Feature: test registration of infoQ

  Scenario: test registration of infoQ
    Given I open the url "https://www.infoq.com"
    When I click the login button
    And I click the register link
    And I input the form as below
      | ID                            | VALUE                        |
      | userprofile_firstName         | YingYing                     |
      | userprofile_lastName          | Zhoubb                       |
      | userprofile_email             | yyz5@test.com                |
      | userprofile_password          | Password@1                   |
      | userprofile_confirmedPassword | Password@1                   |
      | userProfile_companyName       | TW                           |
      | userProfile_role              | Testing / QA Engineer        |
      | userprofile_industry          | Business services/consulting |
      | userprofile_employeeNum       | 2,501+                       |
      | userprofile_country           | Hong Kong                    |
    And I click the submit button
    Then I should see the successful page


