ARG REPO=mcr.microsoft.com/dotnet/runtime-deps:6.0.5
FROM $REPO:6.0.5-alpine3.15-amd64

RUN apk --update --no-cache add nodejs nodejs-npm curl bash 

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
