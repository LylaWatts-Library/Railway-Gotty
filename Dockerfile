FROM debian:buster

RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y curl neofetch xterm wget htop && curl -sSLo gotty https://raw.githubusercontent.com/afnan007a/Replit-Vm/main/gotty
RUN chmod +x gotty && mv gotty /usr/bin/
ENV TERM=xterm
WORKDIR /root

CMD gotty -p 80 -w bash
