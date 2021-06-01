FROM  ubuntu:18.04
LABEL maintainer="andreas@lacework.net" \
      description="The Lacework Inline Scanner scans container images against known vulnerabilities"

RUN apt-get update
RUN apt-get install curl -y
ADD bin/lw-scanner-linux-386 /usr/local/bin/lw-scanner
RUN chmod +x /usr/local/bin/lw-scanner
RUN mkdir -p /tmp/lw-scanner/logs && mkdir -p /tmp/lw-scanner/data
ENTRYPOINT ["/usr/local/bin/lw-scanner"]
