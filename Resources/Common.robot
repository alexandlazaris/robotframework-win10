*** Settings ***
Documentation	This file sets up shared keywords
Library	Selenium2Library


*** Keywords ***
Begin test
  Open Browser  about:  ${BROWSER}

End test
	Close Browser