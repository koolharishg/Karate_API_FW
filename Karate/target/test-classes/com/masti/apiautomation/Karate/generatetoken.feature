Feature: Generate token

Background:
			* url 'https://restful-booker.herokuapp.com'
			* header content-type = 'application/json'
			
Scenario: Verify token generation
		Given path '/auth'
		And request {"username": "admin", "password": "password123"}
		When method post
		Then status 200