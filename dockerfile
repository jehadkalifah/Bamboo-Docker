FROM  atlassian/bamboo-agent-base
WORKDIR /App

RUN apt-get update -y
RUN apt-get upgrade -y
# Install dependencies if needed
RUN apt-get install -y libicu-dev 
# RUN apt-get install -y dotnet-sdk-8.0
# Download and install the .NET 9 SDK
RUN curl -SL https://dotnet.microsoft.com/download/dotnet-core/scripts/v1/dotnet-install.sh | bash /dev/stdin --channel 9.0 --install-dir /usr/share/dotnet \
    && ln -s /usr/share/dotnet/dotnet /usr/bin/dotnet
#RUN apt-get install docker -y

ENV BAMBOO_SERVER=http://192.168.100.101:8085
