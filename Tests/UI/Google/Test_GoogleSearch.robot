*** Settings ***
Documentation	These tests verify Google Search functionality
Library  Selenium2Library

Resource  ../../../Resources/UI_Common.robot
Resource  ../../../Resources/PageObjects/Google/Google_Homepage.robot
Resource  ../../../Resources/PageObjects/Google/Google_SearchResults.robot

Test Setup  UI_Common.Begin test
Test Teardown  UI_Common.End test

*** Test Cases ***
Verify search results functionality
	Google_Homepage.Load
	Google_SearchResults.Enter text and submit search  RobotFramework
	Google_SearchResults.Check search results are returned
	Google_SearchResults.Click a search result link
	Google_SearchResults.Check new page contains search text

Verify that search results match at least 3 links with search text
	Google_Homepage.Load
	Google_SearchResults.Enter text and submit search  RobotFramework GitHub
	Google_SearchResults.Check search results are returned 
	Google_SearchResults.Check search links contain text