FROM rocker/shiny:3.5.1
MAINTAINER Marine Institute
COPY server.R /srv/shiny-server/stockbook/
COPY ui.R /srv/shiny-server/stockbook/
#COPY ForecastingData.csv /srv/shiny-server/stockbook/
#COPY ForecastOptionsV2.csv /srv/shiny-server/stockbook/
#COPY ["ICES-New-Old - extra species.csv", "/srv/shiny-server/stockbook/"]
COPY Introduction.csv /srv/shiny-server/stockbook/
#COPY IntroductionTable.csv /srv/shiny-server/stockbook/
#COPY KeyPoints.csv /srv/shiny-server/stockbook/
#COPY ManagementAdvice.csv /srv/shiny-server/stockbook/
#COPY MixedFish.csv /srv/shiny-server/stockbook/
EXPOSE 3838
CMD ["/usr/bin/shiny-server.sh"]
# docker build -t mi/shinytext:test .
# docker run -d --rm -p 4002:3838 mi/shinytext:test
