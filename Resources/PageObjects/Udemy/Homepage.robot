** Settings ***
Documentation  This is the PO for Udemy homepage
Library  Selenium2Library

*** Keywords ***
Load
	Go To  https://www.udemy.com/courses/
	Wait Until Page Contains  udemy
	
Search for a course using Search Box
	Input Text  id=q  C#
	Submit Form  id=searchbox
	Wait Until Page Contains Element  css=ul.card-wrapper li

Select a parent category course using Categories
	Click Element  css=.dropdown__main-link
	Click Element  css=#dropdownButton div.dropdown__menu > ul > li:nth-child(1) > a
	
Select a child category course using Categories
	Click Element  css=.dropdown__main-link
	Mouse Over  css=#dropdownButton div.dropdown__menu > ul > li:nth-child(2)
	Click Link  /courses/business/finance/

Login
	Click Link  Login