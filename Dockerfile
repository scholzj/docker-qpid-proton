# Qpid Proton
#
# VERSION               0.0.1

FROM		centos:centos7
MAINTAINER 	JAkub Scholz "www@scholzj.com"

# Install all dependencies
USER root

#  Add Qpid Proton repo
RUN curl -o /etc/yum.repos.d/qpid-proton-devel.repo http://repo.effectivemessaging.com/qpid-proton-devel.repo && yum -y --setopt=tsflag=nodocs install qpid-proton-c python-qpid-proton && yum clean all
