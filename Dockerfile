FROM registry.fedoraproject.org/fedora:latest
MAINTAINER cevich@redhat.com
ENV container="docker"
ADD ["/Dockerfile", "/pre_installed_rpms", "/root/"]
RUN dnf update -y && \
    cat /root/pre_installed_rpms | xargs dnf install -y && \
    dnf clean all && \
    rm -rf /var/cache/yum
