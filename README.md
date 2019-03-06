# robotframework-win10
## Windows 10 - Robot framework
* Download & install Python 3 (Python 2 support stops in 2020)
* Download & install pip
## Robot Framework
### Install
```pip install robot framework``` - https://github.com/robotframework/robotframework/blob/master/INSTALL.rst
### Additional libraries
```pip install robotframework-requests``` - https://github.com/bulkan/robotframework-requests

```pip install robotframework-httplibrary``` - https://github.com/peritus/robotframework-httplibrary

```pip install robotframework-selenium2library``` - https://github.com/robotframework/Selenium2Library

```pip install robotframework-appiumlibrary``` - https://github.com/serhatbolsu/robotframework-appiumlibrary

### Mobile

Using appium to run mobile tests with Robot Framework.

### Android + Windows 10 ONLY

* Tests can be run over wifi to a device (must be on same network) or via USB debugging: https://blog.usejournal.com/run-your-appium-tests-on-real-devices-over-wifi-d70b7e7f6aeb
* To inspect:
	* Using appium desktop, start a server
	* Start a new session with capabiltities for an emulator or physical device (same as test capabilities)
	* Starg session
* Loading an app
	* If it's not installed, include ```app=fullPathToApk``` + ```fullReset``` capabilites
	* If it's already installed, find fill out the respective values for ```appActivity``` & ```appPackage``` (check appium server logs if unsure)


## Usage
### Best practices
* Use tabs to auto complete statements
* Ensure double spaces placed within, not tabs
* Double spaces are vital to running tests
* Implement design patterns to reduce test file size 
* Promote abstraction within tests to create modular keywords and variables
* Double spaces after equals, between arguments
* Single space after Library and test case names 
* Add tags to test cases underneath the test case name
* When testing APIs, will need to register a HTTP certificate on the machine
* Ensure browser drivers are up-to date or in-sync with libraries used. If one (e.g. driver) is older than the other(e.g. SeleniumLibrary), some functionality may be impacted

### Execution
* Can add in parameters into CLI for test result location, files, suites, tags and more
* Doesn't run on GitBash CLI. Works on cmd + powershell. 
* Run single test file: ```robot Tests/test.robot```
* Run single test case: ```robot -t testCaseName Tests/test.robot```
* Run whole test suite (based on parent directory): ```robot Tests./```
* Run single test on ff: Add ```Open Browser  ${BROWSER}``` in file and in CLI use ```robot -i Smoke -v BROWSER:browserName .\Tests\Udemy\test-homepage.robot```. Browsers include ```gc, ff, ie, edge```
* Run test case with custom parameters, use the following examples:
```
*** Keywords ***
Enter email 
	[Arguments]  ${email}
	Input Text  css=#id_email  ${email}

*** Test Case ***
Test form
    Enter email  customEmailParameter
```

## Review
* Minor difficulties to setup, easy to start writing acceptance, e2e and API tests
* Can easily be integrated into build servers such as Jenkins 
* Single log + report pages for each test suite, can keep refreshing page OR read in XML report data into another system (charts)
* Seems like extra work to wrap already wrapped keywords. Must be consistent across all various keywords used (there are many variations of a similar action)
* Test cases can become full Resource references
* Resource keywords end up having same name as test cases
* No history of tests run. Log + report always replaced with latest

### Links 

* https://www.python.org/downloads/ - Python 2.7
* https://pip.pypa.io/en/stable/installing/ - Install python first then run this file
* https://bangladroid.wordpress.com/2016/11/20/how-to-install-python-pip-selenium-chrome-driver/ - Follow to modify system environment variables + downloading selenium browser drivers
* http://robotframework.org/ - Main site
* https://github.com/robotframework/robotframework - Open source repo
* https://packagecontrol.io/installation#st2 - Package control installer for Sublime 2
* https://github.com/shellderp/sublime-robot-plugin - Install this one
* https://github.com/andriyko/sublime-robot-framework-assistant/wiki/How-to - Steps on using sublime package
* https://packagecontrol.io/packages/SublimeREPL - Resolves issues with new packages
* https://wiki.jenkins.io/display/jenkins/robot+framework+plugin - Plugin to Jenkins
* http://docs.python-requests.org/en/master/user/quickstart/ - API docs for Requests
* http://robotframework.org/Selenium2Library/Selenium2Library.html - Selenium library keywords
* http://serhatbolsu.github.io/robotframework-appiumlibrary/AppiumLibrary.html#Switch%20Application - Appium keywords
* https://github.com/appium/appium/blob/master/docs/en/writing-running-appium/caps.md - Appium capabilities