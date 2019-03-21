*** Settings ***
Documentation	This is the PO for the search results
Library	Selenium2Library

*** Variables ***
${SEARCH RESULT LINK}
${SEARCH TERM}

*** Keywords ***
Enter text and submit search
	[Arguments]  ${search term}
	Input Text  css=form input[title='Search']  ${search term}
	${SEARCH TERM} =  Set Variable  ${search term}
	Submit Form

Check search results are returned 
	${SEARCH RESULT LINK} =  Set Variable  div.rc a h3
	Set Test Variable  ${SEARCH RESULT LINK}
	Wait Until Element Is Visible  css=${SEARCH RESULT LINK}
	
Click a search result link
	Click Element  css=${SEARCH RESULT LINK}

Check new page contains search text
	Wait Until Page Contains  ${SEARCH TERM}

Check search links contain text
	Page Should Contain Element  css=${SEARCH RESULT LINK}  limit>=3
	${count} =  Get Element Count  css=${SEARCH RESULT LINK}
	Log  Element count is: ${count}