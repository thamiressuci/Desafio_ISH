@Registration
Feature: Registration
  As a User
  I want to create an account 
  So that I can make a purchase on the store

  Background: 
    Given I am on the front page http://automationpractice.com/index.php
    When I click on "Sign in" button

  Scenario: T_003_Create_an_account_with_valid_data
	Given I fill in all the fields with valid data
	And click on "Create an account" button
	Then the account should be created 
	And I should be loged in to the site
	
  Scenario: T_004_Create_an_account_without_any_data_seconde_page
	Given I do not fill in none of the fields with data
	And click on "Create an account" button
	Then the account should not be created 
	And I should be seeing a warning message
	
  Scenario: T_005_Create_an_account_required_fields_only
	Given I fill in only the required fields with valid data
	And click on "Create an account" button
	Then the account should be created 
	And I should be logged in to the site

  Scenario: T_006_Create_an_account_testing_field_length
	Given I fill in the field "First name" with less then 32 characteres and at least one number
	And I fill in the field "Last name" with less then 32 characteres and at least one number
	And I fill in the field "Zip/Postal Code" with 6 characters and at least one letter
	And I fill in the field "Home phone" with less then 32 characters and at least one letter
	And I fill in the field "Mobile phone" with less then 32 characters and at least one letter
	And I fill in the field "Assign an address alias for future reference" with 33 characters
	And click on "Create an account" button
	Then the account should not be created 
	And I should be seeing a warning message with a list of errors

  Scenario: T_007_Create_an_account_testing_field_length
	Given I fill in the field "First name" with 33 letters
	And I fill in the field "Last name" with 33 letters
	And I fill in the field "Password" with 33 characters
	And I fill in the field "Company" with 33 characters
	And I fill in the field "Address" with 33 characters
	And I fill in the field "City" with 33 characters
	And I fill in the field "Zip/Postal Code" with 6 numbers
	And I fill in the field "Additional information" with 33 characters
	And I fill in the field "Home phone" with 33 numbers
	And I fill in the field "Mobile phone" with 33 numbers
	And I fill in the field "Assign an address alias for future reference" with 33 characters
	And click on "Create an account" button
	Then the account should not be created 
	And I should be seeing a warning message with a list of errors
	