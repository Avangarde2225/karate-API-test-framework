Feature: check user details
  Scenario: get list of all users

    * def expectedOutput = read('../data/result.json')

    Given url 'https://reqres.in/api/users/2'
    When method get
    Then status 200
    Then print response
    And match response == expectedOutput
    And match response.data.id == 2
    And match response.data.last_name != null

    * def job_code = response.data.job_code
    And match job_code == null