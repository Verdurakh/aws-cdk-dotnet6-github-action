ARG REPO=mcr.microsoft.com/dotnet/runtime-deps:6.0
FROM $REPO:6.0.5-alpine3.15

RUN apk --update --no-cache add nodejs nodejs-npm curl bash 

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
