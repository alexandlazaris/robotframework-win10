** Settings ***
Documentation  This is the PO for Udemy homepage
Library  Selenium2Library

*** Keywords ***
Load
	Go To  https://www.udemy.com/
	Wait Until Page Contains  udemy
	
Select login link
	Click Element  css=.dropdown.dropdown--login a
	Wait Until Page Contains  Login to Your Udemy Account!

Search and wait for course
	Input Text  id=q  C#
	Submit Form  id=searchbox
	Wait Until Page Contains Element  css=ul.card-wrapper li

Open course menu
	Mouse Over  css=#dropdownButton.dropdown--topics

Choose all development course
	Mouse Over  css=#dropdownButton div.dropdown__menu > ul > li:nth-child(1)
	Click Link  /courses/development/
	
Choose business/finance course
	Mouse Over  css=#dropdownButton div.dropdown__menu > ul > li:nth-child(2)
	Click Link  /courses/business/finance/
