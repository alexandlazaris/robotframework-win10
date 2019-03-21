*** Settings ***
Library  Selenium2Library

*** Variables ***
${browser}  chrome
${url}  https://robotframework.org/Selenium2Library/Selenium2Library.html#Locating%20elements
${h2elementLocator}  h2[id='Locating elements']
${expectedText}  Locating elements
${shortcutLink}  div.shortcuts a.match
${numberOfShortcutLink}  176

*** Test Cases ***
Test case with hardcoded values
	Open Browser  https://robotframework.org/Selenium2Library/Selenium2Library.html#Locating%20elements  chrome
	Element Text Should Be  css=h2[id='Locating elements']  Locating elements
	${numberOfTableElements} =  Get Element Count  css=div.shortcuts a.match
	Should Be True  ${numberOfTableElements} == 176
	Close Browser

Test case with variables
	Open Browser  ${url}  ${browser}
	Element Text Should Be  css=${h2elementLocator}  ${expectedText}
	${numberOfTableElements} =  Get Element Count  css=${shortcutLink}
	Should Be True  ${numberOfTableElements} == ${numberOfShortcutLink}
	Close Browser