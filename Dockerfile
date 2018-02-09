FROM registry.fedoraproject.org/fedora:latest
MAINTAINER cevich@redhat.com
ADD /Dockerfile /root/Dockerfile
ENV container="docker" \
    PRE_INSTALLED_RPMS="dnf-plugins-core python-simplejson python2-dnf libselinux-python python3-devel python2-virtualenv gcc openssl-devel redhat-rpm-config libffi-devel python-devel python3-pycurl python-pycurl python2-simplejson"
RUN dnf update -y && \
    dnf install -y $PRE_INSTALLED_RPMS && \
    dnf clean all
