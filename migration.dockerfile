# https://hub.docker.com/_/microsoft-dotnet
FROM mcr.microsoft.com/dotnet/sdk:5.0 AS build
WORKDIR /source

RUN dotnet tool install --global dotnet-ef
ENV PATH="/root/.dotnet/tools:${PATH}"

# copy everything else and build app
COPY . .
WORKDIR /source

ENTRYPOINT ["sleep", "1000"]

#ENTRYPOINT ["dotnet", "ef database update", "${VERSION}"]