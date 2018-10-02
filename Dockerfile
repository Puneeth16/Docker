#Set base image
FROM ubuntu

#Author
MAINTAINER Puneeth gorantlapuneeth@gmail.com

#Update Repository
RUN apt-get update

#Install necessary packages
RUN apt-get install -y nano wget dialog net.tools

#Download and Install Nginx
RUN apt-get install -y nginx

#Working Directory
WORKDIR /

#Expose Ports
EXPOSE 80

#Set teh default command to execute when creating a new container
#CMD service nginx start
CMD /usr/sbin/nginx -g "daemon off;"
 
