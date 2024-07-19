FROM centos:8
RUN yum update -y && \
    yum install -y epel-release && \
    yum install -y fortune-mod cowsay nmap-ncat && \
    yum clean all

COPY wisecow.sh /app/wisecow.sh
RUN chmod +x /app/wisecow.sh
WORKDIR /app
EXPOSE 4499
CMD ["./wisecow.sh"]
