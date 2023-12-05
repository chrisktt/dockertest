
# this dockerfile creates a tiny shell in the docker container
# FROM alpine:latest
# ENTRYPOINT ["/bin/sh", "-c", "env | sort | grep REFINERY; ls /etc/secrets; head -n 3 /etc/secrets/*.yaml"]

# This does not work because /etc/secrets is not available at build time
# FROM docker.io/honeycombio/refinery
# ADD /etc/secrets/*.yaml /etc/refinery


FROM docker.io/honeycombio/refinery


