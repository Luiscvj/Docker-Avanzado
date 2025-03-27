FROM mcr.microsoft.com/dotnet/sdk:8.0 AS build
#Me ubico en source y copio la solucion y el proyecto y lso compilo
WORKDIR /source
COPY ./ApiAzure.sln .
COPY  ./ApiAzure.csproj .
RUN dotnet restore
# luego copio todo eso dentro de app y me ubico en source/app y publico la aplicacion
COPY .  ./app
WORKDIR /source/app
RUN dotnet publish -c release -o /app 
# Etapa de ejecución
FROM mcr.microsoft.com/dotnet/aspnet:8.0 
WORKDIR /app
COPY --from=build /app ./

CMD ["dotnet", "api-azure.dll"]
