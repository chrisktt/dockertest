# test.sh
# run podman tests

echo '
# this dockerfile creates a tiny shell in the podman container
FROM alpine:latest

# ENTRYPOINT ["/bin/sh"]

# default command: echo the environment variable MY_FILE and then cat the file named by MY_FILE
CMD echo MY_FILE=$MY_FILE && cat $MY_FILE | head -n 5
' > Dockerfile

# build the image
podman build -t myimage -f Dockerfile .

# run the image
# The -e flag allows setting environment variables when running the container. Any variables referenced in the Dockerfile CMD will need to be passed this way.
# Without setting MY_FILE, the container would error since the variable is undefined. Specifying it at runtime with -e makes it available within the container.

podman run -it -e MY_FILE=/etc/hosts myimage

