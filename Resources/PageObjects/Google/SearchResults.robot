*** Settings ***
Documentation	This is the PO for the search results
Library	Selenium2Library

*** Keywords ***
Enter text and search
	Input Text  css=input.gsfi#lst-ib  Macbook
	Submit Form
	Wait Until Element Is Visible  css=div.rc

Select a search result link
	Click Link  css=div.rc h3.r a 
	Wait Until Page Contains  MacBook