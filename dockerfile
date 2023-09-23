FROM  atlassian/bamboo-agent-base
WORKDIR /App

RUN apt-get update -y
RUN apt-get upgrade -y
RUN apt-get install dotnet-sdk-7.0 -y
RUN apt-get install docker -y

ENV BAMBOO_SERVER=http://localhost:8085
