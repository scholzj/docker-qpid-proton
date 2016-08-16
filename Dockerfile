FROM		centos:centos7
MAINTAINER 	JAkub Scholz "www@scholzj.com"

USER root

RUN curl -o /etc/yum.repos.d/qpid-proton-devel.repo http://repo.effectivemessaging.com/qpid-proton-devel.repo \
        && yum -y --setopt=tsflag=nodocs install qpid-proton-c python-qpid-proton && yum clean all
