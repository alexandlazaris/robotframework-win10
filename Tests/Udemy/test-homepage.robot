*** Settings ***
Library  Selenium2Library

Resource  ../../Resources/Common.robot
Resource  ../../Resources/PageObjects/Udemy/Homepage.robot

Test Setup  Common.Begin test
Test Teardown  Common.End test

*** Test Cases ***
Search for a c# course
	[Tags]  Smoke  Search
	Homepage.Load
	Homepage.Search and wait for course

Select a parent category Development
	[Tags]  Search
	Homepage.Load
	Homepage.Select a parent category course using Categories

Select a child category course Business > Finance
	[Tagsude]  Search
	Homepage.Load
	Homepage.Select a child category course using Categories

Login to Udemy successfully
	[Tags]  Smoke
	Homepage.Load
	Homepage.Select login link

