FROM ubuntu

MAINTAINER a.cs.marosi@gmail.com

RUN apt-get -y update 
RUN apt-get -y install wget

RUN wget "http://terraria.org/server/terraria-server-linux-1308.tar.gz" -O terraria.tar.gz && tar -xzvf terraria.tar.gz 
RUN mv ./terraria-server-linux-1308 ./terraria-server
RUN rm -rf terraria.tar.gz

ADD run.sh /
RUN chmod 755 run.sh
RUN chmod +x terraria-server/TerrariaServer.bin.x86

CMD ["./run.sh"]

EXPOSE 7777

