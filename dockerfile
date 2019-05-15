#FROM ubuntu:18.04
FROM python:3

COPY Tests Resources ./robot-repo/
COPY ./requirements.txt .

# execute these commands when building image
RUN pip install -r ./requirements.txt
RUN cd ./robot-repo
RUN robot ./Tests/API/Tests_Weather.robot
RUN mkdir results
RUN mv report.html ./results
RUN mv log.htm ./results
RUN mv ouput.xml ./results
# execute for newly built container based off image 
#CMD ["robot", "Tests/API"] 
