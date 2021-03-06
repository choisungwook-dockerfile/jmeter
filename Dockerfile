FROM openjdk:8-jdk-slim
ARG JMETER_VERSION

ENV JMETER_VERSION ${JMETER_VERSION:-3.3}
ENV JMETER_HOME /jmeter/apache-jmeter-$JMETER_VERSION/
ENV PATH $JMETER_HOME/bin:$PATH

# INSTALL PRE-REQ
RUN apt-get update && apt-get -y install wget unzip vim curl

# INSTALL JMETER BASE 
RUN mkdir /jmeter
WORKDIR /jmeter

RUN wget https://archive.apache.org/dist/jmeter/binaries/apache-jmeter-$JMETER_VERSION.tgz && \
tar -xzf apache-jmeter-$JMETER_VERSION.tgz && \
rm apache-jmeter-$JMETER_VERSION.tgz

WORKDIR $JMETER_HOME 
    
COPY scripts/install_plugin-manager.sh .
RUN bash ./install_plugin-manager.sh