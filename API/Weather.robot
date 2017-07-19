*** Settings ***
Library  RequestsLibrary
Library  HttpLibrary


*** Test Cases ***
Get weather using RequestLibrary
	Create Session  session  http://api.openweathermap.org/data/2.5/weather?APPID=2b53c3dd2c395e6f539915581799e8d3&q=Sydney&units=metric&mode=html
	${response} =  Get Request  session  /GET
	Log To Console  \n
	Log To Console  status: ${response.status_code}
	${json} =  Set Variable  ${response.json()}
	Log To Console  ${json['main']}

	#${json} =  Set Variable  ${response.json()}
	Log To Console  \n
	