FROM kunst1080/x11-base:latest
MAINTAINER kunst1080 kontrapunkt1080@gmail.com

RUN apt-get update \
        && DEBIAN_FRONTEND=noninteractive apt-get install -y \
            ubuntu-mate-desktop \
            mate-desktop-environment-extras \
	&& rm -rf /var/lib/apt/lists/*

ADD xinitrc /xinitrc
RUN ln -s /xinitrc /root/.xinitrc
