# robotframework-win10
Robot Framework, POM, reports self generated. What more do you need? 

/play deeper

![Jenkins status](/JenkinsBuildReport.png?raw=true "Integration complete")

## Windows 10 - Robot framework - Sublime Text 2

The following is a list of links + notes I made during installation and development. Most will be of use to you :bowtie:

* Within sublime, use Preferences>Package Control>Install Packages>Robot x (x should = "Framework")
* To run tests, change Tools>Build System to "robot" 
* As of latest release, robot framework runs only with Python 2.7
* Use tabs to auto complete statements
* Ensure double spaces placed within, not tabs
* Double spaces are vital to running tests
* Robot selelium actions - http://robotframework.org/Selenium2Library/Selenium2Library.html
* Can leave current tests as is. Pros are that it's quick to get started. Cons are test log/report can be overloaded with steps for larger test cases
* Page Object Model and creating common scripts allow you to abstract methods to clean up your robot test file and subsqeuently the test log/report 
* Auto completion of statements not available in Sublime. Can be tricky when first starting out
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
