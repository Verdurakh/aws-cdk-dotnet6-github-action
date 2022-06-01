ARG REPO=mcr.microsoft.com/dotnet/aspnet
FROM $REPO:6.0.5-bullseye-slim-amd64

RUN apk --update --no-cache add nodejs npm curl bash 

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
