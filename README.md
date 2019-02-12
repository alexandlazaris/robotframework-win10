# robotframework-win10
Robot Framework, POM, reports self generated. What more do you need? 

![Jenkins status](/JenkinsBuildReport.png?raw=true "Integration complete")

## Windows 10 - Robot framework

## Robot Framework
### Install
```pip install robot framework``` - https://github.com/robotframework/robotframework/blob/master/INSTALL.rst
### Additional libraries
```pip install robotframework-requests``` - https://github.com/bulkan/robotframework-requests
```pip install robotframework-httplibrary``` - https://github.com/peritus/robotframework-httplibrary
```pip install robotframework-selenium2library``` - https://github.com/robotframework/Selenium2Library

### Usage


### Best practices
* Use tabs to auto complete statements
* Ensure double spaces placed within, not tabs
* Double spaces are vital to running tests
* Selenium keywords - http://robotframework.org/Selenium2Library/Selenium2Library.html
* Implement design patterns to reduce test file size 
* Promote abstraction within tests to create modular keywords and variables

### If using Sublime Text 2 :bowtie:
* Within sublime, use Preferences>Package Control>Install Packages>Robot x (x should = "Framework")
* To run tests, change Tools>Build System to "robot" 
* Auto completion of statements is not available in Sublime, tricky for beginner use
* If error displays due to Python interpreter, go to Robot Framework>Settings and set "python_interpreter": "C:\\Python27\\python.exe",
* Double spaces after equals, between arguments
* Single space after Library and test case names 
* Add tags to test cases underneath the test case name
* When testing APIs, will need to register a HTTP certificate on the machine
* Can add in parameters into CLI for test result location, files, suites, tags and more
* Doesn't run on GitBash CLI. Works on cmd + powershell. 
* Can sometimes run in Sublime Text, but easier to do from CLI
* Run single test file: ```robot -d results Tests/Google.robot```
* Run single test case: ```robot --i tagName Tests/test.robot```
* Run whole test suite: ```robot -d results Tests```
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

## MacOS

Following a similar path to the Windows installation, these were additional notes/problems encountered.

* Good help: http://testnblog.com/appium-up-running-with-robot-framework/
* When installing various pip packages, you might encounter errors. This is likely caused by directory permissions. Simply open the parent directory where the error occured and enable read/write permissions
* For chrome, gecko and I assume other drivers, place them in /usr/local/bin. Link this dir path in ```sudo nano /etc/paths```. Use "/usr/local/bin"
* Delete contents of .bash_profile if terminal problems exist 
* In case terminal problems, become a ```root user: (from exe dir)sudo -i```
* If logs complain about certain keywords, it may be due to having multiple libraries having duplicate keyword names. Remove whichever one you don't need
* If logs complain about driver/path locations, open ```sudo nano /etc/paths```, add a random change (space + backspace works fine) and save + exit
* Get list of xcode simulators: ```xcrun simctl list```

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
