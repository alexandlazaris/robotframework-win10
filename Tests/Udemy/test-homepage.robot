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
	Homepage.Search for a course using Search Box

Select a parent category course using Categories
	[Tags]  Search
	Homepage.Load
	Homepage.Select a parent category course using Categories

Select a child category course using Categories
	[Tags]  Search
	Homepage.Load
	Homepage.Select a child category course using Categories

Login
	[Tags]  Smoke
	Homepage.Load
	Homepage.Login

