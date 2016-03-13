FROM ubuntu

MAINTAINER a.cs.marosi@gmail.com

ENV INSVER=terraria-server-linux-1308
ENV INSDIR=/opt/${INSVER}

RUN apt-get -y update 
RUN apt-get -y install wget

RUN wget "http://terraria.org/server/${INSVER}.tar.gz" -O terraria.tar.gz && tar -xzvf terraria.tar.gz -C /opt/
RUN rm -rf terraria.tar.gz
RUN mkdir ${INSDIR}/Worlds
ADD Worlds ${INSDIR}/Worlds/
ADD serverconfig.txt ${INSDIR}
ADD run.sh ${INSDIR}

RUN chmod +x ${INSDIR}/run.sh
RUN chmod +x ${INSDIR}/TerrariaServer.bin.x86

WORKDIR ${INSDIR}
CMD ["./run.sh"]

EXPOSE 7777

