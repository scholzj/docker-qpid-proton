FROM		centos:centos7
MAINTAINER 	JAkub Scholz "www@scholzj.com"

USER root

#  Add Qpid Proton repo
RUN curl -o /etc/yum.repos.d/qpid-proton-testing.repo http://repo.effectivemessaging.com/qpid-proton-testing.repo \
        && yum -y --setopt=tsflag=nodocs install qpid-proton-c python-qpid-proton && yum clean all
