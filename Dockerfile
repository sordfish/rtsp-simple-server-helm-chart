FROM restreamio/gstreamer:latest-prod-dbg

WORKDIR /app

RUN apt update && \
    apt install wget -y && \
    wget -qO- https://github.com/aler9/rtsp-simple-server/releases/download/v0.20.2/rtsp-simple-server_v0.20.2_linux_amd64.tar.gz \
    | tar xvz --exclude='rtsp-simple-server.yml'

CMD ["./rtsp-simple-server"]   