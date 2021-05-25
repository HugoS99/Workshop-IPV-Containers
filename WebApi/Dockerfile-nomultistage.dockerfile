
FROM mcr.microsoft.com/dotnet/core/sdk:3.0 AS base
WORKDIR /app
EXPOSE 80

WORKDIR /src
COPY ["WebAPI.csproj", ""]
RUN dotnet restore "./WebAPI.csproj"
COPY . .
WORKDIR "/src/."
ENV ASPNETCORE_URLS "http://*:5000"
RUN dotnet build "WebAPI.csproj" -c Release -o /app/build
RUN dotnet publish "WebAPI.csproj" -c Release -o /app/publish
WORKDIR /app/publish
ENTRYPOINT ["dotnet", "WebAPI.dll"]