FROM debian:buster

RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y curl bash fish && curl -sSLo gotty https://raw.githubusercontent.com/afnan007a/Replit-Vm/main/gotty
RUN chmod +x gotty && mv gotty /usr/bin/

CMD gotty -p 80 -w fish
