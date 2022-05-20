FROM foundeo/minibox:latest AS build

RUN box install fixinator

FROM foundeo/minibox:latest

ENV LUCEE_EXTENSIONS="$LUCEE_EXTENSIONS,37C61C0A-5D7E-4256-8572639BE0CF5838;name=ESAPI extension;version=2.1.0.18"

COPY --from=build /root/.CommandBox/cfml/modules /root/.CommandBox/cfml/modules 
