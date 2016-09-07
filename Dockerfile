
FROM ubuntu

MAINTAINER Zhi Han <zhi.han@gmail.com>

# Create a user called 'me', set password and add to sudoers
RUN adduser --home=/home/me me && \
  echo me:password | chpasswd && \
  adduser me sudo

# Install netcat and ifconfig
RUN apt-get update && apt-get -y install netcat-openbsd && \
  apt-get -y install net-tools && \
  apt-get -y install iputils-ping


# Start the image as 'me'
USER me