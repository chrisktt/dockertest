
# this dockerfile creates a tiny shell in the docker container
# FROM alpine:latest
# ENTRYPOINT ["/bin/sh", "-c", "env | sort | grep REFINERY; ls /etc/secrets; head -n 3 /etc/secrets/*.yaml"]

FROM docker.io/honeycombio/refinery
ADD /etc/secrets/*.yaml /etc/refinery

