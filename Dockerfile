FROM ubuntu:18.04
RUN apt-get update && apt-get install unzip wget openssl libc6  -y
WORKDIR /home/minecraft
RUN wget https://minecraft.azureedge.net/bin-linux/bedrock-server-1.16.221.01.zip
RUN unzip bedrock-server-1.16.221.01.zip

ADD start.sh start.sh
RUN chmod a+x start.sh
RUN chmod a+x bedrock_server

CMD /home/minecraft/start.sh