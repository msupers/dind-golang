FROM registry.cn-beijing.aliyuncs.com/hobbits/dind-ubuntu:18.04
RUN wget https://studygolang.com/dl/golang/go1.13.8.linux-amd64.tar.gz -O /tmp/go1.13.8.linux-amd64.tar.gz
ADD /tmp/go1.13.8.linux-amd64.tar.gz /opt/
ENV PATH $PATH:/opt/go/bin
ENV GOPATH /home/gowork
ENV GOPROXY https://goproxy.cn
ENV GOROOT=/opt/go
ENV GO111MODULE=on
ENV GOBIN=/opt/go/bin
