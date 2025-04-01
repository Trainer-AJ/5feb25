# https://learn.microsoft.com/en-us/aspnet/core/host-and-deploy/docker/building-net-docker-images?view=aspnetcore-9.0
FROM mcr.microsoft.com/dotnet/sdk:9.0 AS runtime

WORKDIR /app
COPY Publish/ ./
ENV ASPNETCORE_ENVIRONMENT=Production
ENTRYPOINT ["./tax1.exe"]

