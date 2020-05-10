Feature: Check returned users by API

Background:
	* url 'https://gorest.co.in'
	* header Authorization = 'Bearer GDuspNOo6MbUdF3IGBB4aX6WUB6IM_kDN-oi'

Scenario: Get all users having name Brock
		Given path '/public-api/users'
		And param first_name = 'brock'
		And param status = 'active'
		When method get
		Then status 200
		Then match response.result[*].first_name contains ["Brock"]