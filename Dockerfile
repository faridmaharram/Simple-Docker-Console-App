
FROM mcr.microsoft.com/dotnet/runtime:5.0 AS base
WORKDIR /app
COPY /bin/Release/net5.0/publish app/
ENTRYPOINT ["dotnet", "Simple Docker Example.dll"]


#FROM mcr.microsoft.com/dotnet/sdk:5.0 AS build
#WORKDIR /src
#COPY ["Simple Docker Example.csproj", "."]
#RUN dotnet restore "./Simple Docker Example.csproj"
#COPY . .
#WORKDIR "/src/."
#RUN dotnet build "Simple Docker Example.csproj" -c Release -o /app/build
#
#FROM build AS publish
#RUN dotnet publish "Simple Docker Example.csproj" -c Release -o /app/publish /p:UseAppHost=false
#
#FROM base AS final
#WORKDIR /app
#COPY --from=publish /app/publish .
#ENTRYPOINT ["dotnet", "Simple Docker Example.dll"]