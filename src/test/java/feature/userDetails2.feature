Feature: check user details

Background:
    * def expectedOutput = read('../data/results.json')

  Scenario: request user 2 details

    Given url 'https://reqres.in/api/users/2'
    When method get
    Then status 200
    Then print response
    And match response == expectedOutput[0]

  Scenario: request user 3 details

    Given url 'https://reqres.in/api/users/3'
    When method get
    Then status 200
    Then print response
    And match response == expectedOutput[1]

