*** Settings ***
Library  AppiumLibrary  timeout=60  run_on_failure=Capture Screenshot
Suite Setup  Open Application  http://localhost:4723/wd/hub
             ...  platformName=Android
             ...  deviceName=Nokia
             ...  deviceId=192.168.1.110:5555
             ...  platformNameVersion=8.0
            #  ...  app=C:/Users/Alex Lazaris/Desktop/BIT BUCKET REPOS ARE HERE/robotframework-win10/SampleApp/ApiDemos-debug.apk
             ...  appActivity=io.appium.android.apis.ApiDemos
             ...  appPackage=io.appium.android.apis
             ...  automationName=Appium
             ...  printPageSourceOnFindFailure=true
            #  ...  fullReset=true
Suite Teardown  Quit Application
             
*** Keywords ***
Select a menu option
    [Arguments]  ${menuText}
    Click Element  xpath=//*[@content-desc="${menuText}"]

Check Accessibility
    Click Element  accessibility_id=Accessibility Node Querying 
    Wait Until Page Contains  Do Taxes
    Capture Page Screenshot  ./Screenshots/APIDemos-Accessibility.png

Check Views
    Click Element  accessibility_id=Animation
    Wait Until Element Is Visible  xpath=//*[@content-desc="3D Transition"]
    Tap  xpath=//*[@content-desc="3D Transition"]
    ${elements}  Get Webelements  xpath=//*[@resource-id="android:id/text1"]
    ${count}  Get Matching Xpath Count  //*[@resource-id="android:id/text1"]
    Log  Found ${count} elements
    :FOR  ${i}  IN RANGE  3 
    \  Tap  ${elements}[${i}]
    \  Wait Until Element Is Visible  class=android.widget.ImageView
    \  Tap  class=android.widget.ImageView
    \  Wait Until Element Is Visible  ${elements}[${i}]
    Capture Page Screenshot  ./Screenshots/APIDemos-Views.png

Go back to root menu
    Go Back
    Go Back


*** Test Cases ****
Verify Accessibility and its sub menu
    Wait Until Page Contains  API Demos
    Select a menu option  Accessibility
    Check Accessibility
    Go back to root menu

Verify Views and its sub menu
    Wait Until Page Contains  API Demos
    Select a menu option  Views
    Check Views
    Go back to root menu