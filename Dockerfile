FROM ubuntu:14.04
MAINTAINER chauhan.suryaveer@gmail.com

RUN apt-get -y update && apt-get clean
RUN apt-get -y install gcc && apt-get clean
RUN echo "HELLO"

EXPOSE 15000

# Simple startup script to avoid some issues observed with container restart 
ADD samplecserver.c /samplecserver.c