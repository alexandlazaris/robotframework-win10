** Settings ***
Documentation  This is the PO for Google Translate page
Library  Selenium2Library

*** Keywords ***
Select Spanish from provided buttons
	Click Element  css=div#gt-tl-sugg div.jfk-button:nth-child(2)

Type in text into input
	Select Spanish from provided buttons
	Input Text  id=source  Welcome to Spain
	Retrieve translated text

Retrieve translated text
	Wait Until Page Contains Element  css=span#result_box span
	${text} =  Get Text  css=span#result_box span
	Log To Console  ${text}   