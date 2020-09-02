Feature: check generated token by API
  Background:
    * url 'https://restful-booker.herokuapp.com'
    * header Content-Type = 'application/json'

    Scenario: Create a token
      Given path '/auth'
      And request {"username" : "admin" , "password" : "pasword123"}
      When method post
      Then status 200