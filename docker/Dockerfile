FROM golang:1.14-buster

RUN apt-get update
RUN apt-get --assume-yes install gcc curl python3

WORKDIR /tmp
RUN curl -o libtensorflow-gpu-linux.tar.gz https://storage.googleapis.com/tensorflow/libtensorflow/libtensorflow-gpu-linux-x86_64-1.15.0.tar.gz
RUN tar -C /usr/local -xzf libtensorflow-gpu-linux.tar.gz
RUN ldconfig /usr/local/lib

ADD . /app/

WORKDIR /app
RUN gcc hello_tf.c -ltensorflow -o hello_tf
RUN ./hello_tf

ENTRYPOINT ["go", "run", "hello_tf.go"]