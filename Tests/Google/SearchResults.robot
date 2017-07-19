*** Settings ***
Documentation	This is some basic info about the suite
Library	 Selenium2Library

*** Variables ***

*** Test Cases ***
Check that results are returned
	[Documentation]  Bla bla bla
	[Tags]	Input
	Open Browser  http://www.google.com  chrome
	Wait Until Page Contains  Google
	Input Text  css=input.gsfi#lst-ib  SurfaceBook
	Submit Form
	Wait Until Element Is Visible  css=div.rc
	Close Browser

Check that a result can be selected
	[Documentation]  Bla bla bla
	[Tags]	Navigation
	Open Browser  http://www.google.com  ff
	Wait Until Page Contains  Google
	Input Text  css=input.gsfi#lst-ib  Macbook
	Submit Form
	Wait Until Element Is Visible  css=div.rc
	Click Link  css=div.rc h3.r a 
	Wait Until Page Contains  MacBook
	Close Browser