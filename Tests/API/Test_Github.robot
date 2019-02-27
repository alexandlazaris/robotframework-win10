*** Settings ***
Library  RequestsLibrary
Library	 Selenium2Library
Resource  ../../Resources/APIObjects/GitHub.robot

*** Test Cases ***
Does GitHub have expected username?
	[Tags]  Smoke
	GitHub username

Does GitHub have expected location?
	[Tags]  Smoke
	GitHub location

*** Keywords ***
GitHub username
	api-GitHub.Check username  alexandlazaris

GitHub location
	api-GitHub.Check location  Sydney

