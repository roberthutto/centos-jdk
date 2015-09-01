from centos

# Execute system update
RUN yum -y update && yum -y install git && yum clean all

ENV JAVA_VERSION 8u45
ENV BUILD_VERSION b14

RUN curl -v -j -k -L -H "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/$JAVA_VERSION-$BUILD_VERSION/jdk-$JAVA_VERSION-linux-x64.rpm > /tmp/jdk-8-linux-x64.rpm

RUN rpm -i /tmp/jdk-8-linux-x64.rpm

RUN rm -f /tmp/jdk-8-linux-x64.rpm
