FROM golang:1.7-alpine

COPY . /go/src/github.com/cyverse-de/de-job-killer
RUN go install github.com/cyverse-de/de-job-killer

ENTRYPOINT ["de-job-killer"]
CMD ["--help"]

ARG git_commit=unknown
ARG version="2.9.0"

LABEL org.cyverse.git-ref="$git_commit"
LABEL org.cyverse.version="$version"
