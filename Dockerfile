FROM foundeo/minibox:latest AS build

RUN box install fixinator

FROM foundeo/minibox:latest

COPY --from=build /root/.CommandBox/cfml/modules /root/.CommandBox/cfml/modules 
