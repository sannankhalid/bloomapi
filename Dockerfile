FROM golang:1.8.3

ADD . /go/src/github.com/sannankhalid/bloomapi
ADD config.toml.sample /go/bin/config.toml
ADD docker-start.sh /start.sh

RUN go install github.com/sannankhalid/bloomapi
RUN go install github.com/sannankhalid/bloomapi/tools/api_keys

ENTRYPOINT /start.sh

EXPOSE 3005
