*** Settings ***
Documentation	This is some basic info about the suite
Library  Selenium2Library

Resource  ../../Resources/Common.robot
Resource  ../../Resources/PageObjects/Google/Homepage.robot
Resource  ../../Resources/PageObjects/Google/SearchResults.robot
Resource  ../../Resources/PageObjects/Google/Translate.robot

Test Setup  Common.Begin test
Test Teardown  Common.End test

*** Test Cases ***
Select a search result link and wait for page to contain search text
	Homepage.Load
	SearchResults.Enter text and search
	SearchResults.Select a search result link


Translate into Spanish
	[Tags]  translate
	Homepage.Load
	Homepage.Open menu select translate	
	Translate.Type in text into input