ARG REPO=mcr.microsoft.com/dotnet/runtime-deps
FROM $REPO:6.0.5-alpine3.14-arm32v7


ENV DOTNET_VERSION=6.0.5

RUN apk --update --no-cache add nodejs nodejs-npm curl bash 

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
