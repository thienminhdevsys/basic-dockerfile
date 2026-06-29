FROM alpine:latest
ARG NAME=Captain
ENV NAME=$NAME
CMD ["/bin/sh", "-c", "echo Hello, $NAME !"]
