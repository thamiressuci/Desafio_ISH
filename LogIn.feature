@LogIn
Feature: LogIn
  As a User
  I want to log in to the site
  So that I can make a purchase on the store

  Background: 
    Given I am on front page http://automationpractice.com/index.php
    When I click on "Sign in" button
	
  Scenario: T_008_Check_customerID_valid_data
	Given I fill the fields email address and password with valid data
	And click on 'Sign in" button
	Then I should be logged in to the site
	
  Scenario: T_009_Check_customerID_invalid_password
	Given I fill the field email address with valid data
	And I fill the field password with a invalid data
	And click on 'Sign in" button
	Then I should not be logged in to the site
	Then I should be seeing a warning messagem
	
  Scenario: T_010_Check_customerID_invalid_emailAddress
	Given I fill the field email address with invalid data
	And I fill the field password with a valid data
	And click on 'Sign in" button
	Then I should not be logged in to the site
	Then I should be seeing a warning messagem