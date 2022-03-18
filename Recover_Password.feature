@Recover_Password
Feature: Recover_Password
  As a User
  I want to log in to the site
  So that I can make a purchase on the store

  Background: 
    Given I am on front page http://automationpractice.com/index.php
    When I click on "Sign in" button
	Then click on "Forgot your password?" button
	
  Scenario: T_011_Recover_Password_Valid_Data
	Given I fill the field email address valid data
	And click on 'Retrieve password" button
	Then an email should be sent to me
	And the email should have a new password
	
  Scenario: T_012_Recover_Password_Inalid_Data
	Given I fill the field email address with invalid data
	And click on 'Retrieve password" button
	Then I should be seeing a warning messagem