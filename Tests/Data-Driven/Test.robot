*** Settings ***
Resource  DataManager.robot
Library  Selenium2Library
 
Test Setup  Get CSV Data  ${file}
Test Teardown  Close Browser

*** Variables ***
${file}  ./Tests/Data-Driven/Data.csv

*** Test Cases ***
Run a test using CSV data
    Read in Test Data
    Open Browser  ${url}  chrome
    Wait Until Page Contains  ${pageTitle}
    Title Should Be  ${pageTitle}