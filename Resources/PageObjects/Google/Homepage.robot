*** Settings ***
Documentation	This is the PO for the Google homepage
Library	 Selenium2Library

*** Keywords ***
Load
	Go To  http://www.google.com
	Wait Until Page Contains  Google
	Wait Until Element Is Visible  id=hplogo

Open menu select translate
	Click Link  https://www.google.com.au/intl/en/options/
	Wait Until Page Contains  Even more from Google
	#Wait Until Element Is Visible  css=ul.gb_ja.gb_ca
	#Wait Until Page Contains Element  css=#gbwa ul:nth-child(1) li.gb_Z:nth-child(11) a
	Click Link  Translate