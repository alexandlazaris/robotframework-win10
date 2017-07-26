*** Settings ***
Library  Selenium2Library

Resource  ../../Resources/Common.robot
Resource  ../../Resources/PageObjects/Udemy/Homepage.robot
Resource  ../../Resources/PageObjects/Udemy/Development.robot
Resource  ../../Resources/PageObjects/Udemy/Business.Finance.robot

Test Setup  Common.Begin test
Test Teardown  Common.End test

*** Test Cases ***
Search for a c# course
	[Tags]  Smoke  Search
	Homepage.Load
	Homepage.Search and wait for course

Select Development
	[Tags]  Smoke
	Homepage.Load
	Homepage.Open course menu
	Homepage.Choose all development course
	Development.Check text

Select Business/Finance
	[Tags]  Smoke
	Homepage.Load
	Homepage.Open course menu
	Homepage.Choose business/finance course
	Business.Finance.Check text

Login to Udemy successfully
	[Tags]  Smoke Login
	Homepage.Load
	Homepage.Select login link