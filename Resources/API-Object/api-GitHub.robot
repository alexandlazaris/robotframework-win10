*** Settings ***
Documentation	This is the PO for GitHub API
Library  RequestsLibrary

*** Variables ***
${api response}  
${api response to json}
${session name}  github
${apiUrl}  https://api.github.com


*** Keywords ***
Connect to webservice
	Create Session  ${session name}  ${apiUrl}
	${api response} =  Get request	${session name}	/users/alexandlazaris
	Should Be Equal As Strings  ${api response.status_code}  200
	${api response to json} =  Set Variable  ${api response.json()}
	Set Test Variable  ${api response to json}

Check username
	Connect to webservice
	[Arguments]  ${expected GitHub username}
	${response username} =  Set Variable  ${api response to json['login']}
	Should Be Equal As Strings  ${response username}  ${expected GitHub username}

Check location
	Connect to webservice
	[Arguments]  ${expected GitHub location}
	${response location} =  Set Variable  ${api response to json['location']}
	Should Contain  ${response location}  ${expected GitHub location}