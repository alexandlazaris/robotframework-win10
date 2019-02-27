*** Settings ***
Documentation	This is the PO for the Google homepage
Library	 Selenium2Library

*** Keywords ***
Load
	Go To  http://www.google.com
	Wait Until Page Contains  Google
	Wait Until Element Is Visible  id=hplogo