FROM ubuntu:latest
ENV TZ=Europe/Kiev
COPY ./Gear_start.sh ./
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN apt-get update && apt-get upgrade -y
RUN apt-get -y install wget curl tar nano
CMD sed -i 's/\r//' Gear_start.sh && ./Gear_start.sh
