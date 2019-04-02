*** Settings ***
Library  ./Csv.py

*** Variables ***
${url}
${pageTitle}
${data} 

*** Keywords ***    
Get CSV Data
    [Arguments]  ${file}
    ${data} =  read csv file   ${file}
    Set Test Variable  ${data}
    [Return]  ${data}

Read in Test Data
    Read in URL
    Read in Page Title

Read in URL
    ${url} =  Set Variable  ${data}[1][0]
    Set Test Variable  ${url}

Read in Page Title
    ${pageTitle} =  Set Variable  ${data}[1][1]
	Set Test Variable  ${pageTitle}