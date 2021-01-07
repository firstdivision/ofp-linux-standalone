FROM ubuntu 
ENV DEBIAN_FRONTEND=noninteractive
ENV HOST_HOSTNAME=`ofp`
RUN apt-get update 
RUN apt-get install -y apache2 
RUN apt-get install -y apache2-utils 
RUN apt-get install gcc -y
RUN apt-get install sharutils
RUN apt-get clean 

#copy web stuff
COPY www /var/www/html

# Copy OFP files
COPY ofp-files /ofp

# Copy and extract the server gzip
COPY ofp-server/ofp-server-1.96.shar.gz /ofp
RUN cd ofp/ && gzip -d ofp-server-1.96.shar.gz && sh ofp-server-1.96.shar && rm ofp-server-1.96.shar

#Copy server.cfg
COPY ofp-server/server.cfg /ofp

RUN cd ofp && ./tolower
#RUN cd ofp && ./server

EXPOSE 80 
CMD ["apache2ctl", "-D","FOREGROUND"]
