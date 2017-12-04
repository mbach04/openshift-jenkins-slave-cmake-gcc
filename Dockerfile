FROM openshift/jenkins-slave-base-centos7:latest

RUN yum groupinstall 'Development Tools' -y && yum install wget -y && yum install cmake \
    mkdir /cmake

ENV CMAKE_VERSION 3.10.0
RUN set -eux; \
	\
	export PATH="/usr/local/go/bin:$PATH"; \
	go version
