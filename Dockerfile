FROM foundeo/minibox:latest AS build

RUN box install fixinator

FROM foundeo/minibox:latest

RUN mkdir -p /opt/fixinator/

RUN curl --location -o /opt/fixinator/fixinator-git-changed.cfc https://github.com/foundeo/fixinator-git-changed/raw/main/fixinator-git-changed.cfc

ENV LUCEE_EXTENSIONS="$LUCEE_EXTENSIONS,37C61C0A-5D7E-4256-8572639BE0CF5838;name=ESAPI extension;version=2.1.0.18,66E312DD-D083-27C0-64189D16753FD6F0;name=PDF Extension;version=1.1.0.7"

COPY --from=build /root/.CommandBox/cfml/modules /root/.CommandBox/cfml/modules 
