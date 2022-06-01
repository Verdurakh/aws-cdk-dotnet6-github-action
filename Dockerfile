FROM mcr.microsoft.com/dotnet/aspnet:6.0-alpine AS base

ENV DOTNET_VERSION=6.0.5

RUN apk --update --no-cache add nodejs npm curl bash 

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
