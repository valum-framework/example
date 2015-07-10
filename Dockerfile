FROM valum/valum:latest

MAINTAINER Guillaume Poirier-Morency <guillaumepoiriermorency@gmail.com>

COPY . /app
WORKDIR /app

RUN ./waf configure && ./waf build

EXPOSE 3003

CMD ./build/app
