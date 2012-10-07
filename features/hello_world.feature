Feature: hello_world 
	 As a user
	 I run the program
	 So that I get an output

	 Scenario: start the programm
	 	   Given the program is not running
		   When I start the program
		   Then it should say "Hello, World!"