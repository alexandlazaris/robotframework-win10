*** Settings ***
Library  RequestsLibrary
Library	 Selenium2Library
Resource  ../Resources/Common.robot

*** Variables ***

*** Test Cases ***
Simple REST API call
	Check Github username	

** Keywords ***
Check Github username
	Create Session  session  https://api.github.com
	${response} =  Get Request  session  users/alexandlazaris
	${json} =  Set Variable  ${response.json()}
	Log To Console  ${json['login']}
	Should Be Equal As Strings  ${response.status_code}  200
	${json} =  Set Variable  ${response.json()}
	Log  ${json}