@Registration_Email_Test
Feature: Registration_Email_Test
  As a User
  I want to create an account 
  So that I can make a purchase on the store

  Background: 
    Given I am on the front page http://automationpractice.com/index.php
    When I click on "Sign in" button

  Scenario: T_001_Create_an_account_emailAddress_active_account
	Given I fill the field email address with an email alredy in use to create a new account
	And click on "Create an account" button
	Then the account should not be created 
	And I should be seeing a warning messagem
	
  Scenario: T_002_Create_an_account_emailAddress_invalid
	Given I fill the field email address with an invalid email address to create a new account
	And click on "Create an account" button
	Then the account should not be created 
	And I should be seeing a warning messagem