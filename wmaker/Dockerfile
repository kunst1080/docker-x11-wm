FROM kunst1080/x11-base:latest
MAINTAINER kunst1080 kontrapunkt1080@gmail.com

USER root

RUN apt-get update \
        && DEBIAN_FRONTEND=noninteractive apt-get install -y \
            wmaker \
            wmaker-data \
            menu \
            x11-apps \
            desktop-base \
            xfce4-terminal \
            chromium-browser \
            ibus-mozc \
            fonts-ipafont \
            im-config \
	&& rm -rf /var/lib/apt/lists/*

USER $USER
CMD [ "/usr/bin/startx" ]
