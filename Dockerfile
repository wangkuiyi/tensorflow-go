FROM tensorflow/tensorflow:1.13.1

# Install TensorFlow C API (the CPU-only version).
RUN apt-get update
RUN apt-get install -y curl tar gzip
RUN curl -s https://storage.googleapis.com/tensorflow/libtensorflow/libtensorflow-cpu-linux-x86_64-1.13.1.tar.gz | tar xzf - -C /usr/local

# Install Go
RUN curl -s https://dl.google.com/go/go1.12.4.linux-amd64.tar.gz | tar xzf - -C /usr/local

RUN mkdir -p /go
ENV GOPATH=/go
ENV LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/lib
ENV PATH=$PATH:/usr/local/go/bin

# Install TensorFlow Go
RUN apt-get install -y git
RUN go get github.com/tensorflow/tensorflow/tensorflow/go

