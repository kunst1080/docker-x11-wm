FROM kunst1080/x11-base:latest
MAINTAINER kunst1080 kontrapunkt1080@gmail.com

USER root

RUN apt-get update \
        && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
            i3 \
            i3status \
            i3blocks \
            dmenu \
            j4-dmenu-desktop \
            rxvt-unicode-256color \
            feh \
            compton \
            parcellite \
            volumeicon-alsa \
            xsel \
            mirage \
            imagemagick \
            evince \
            lxrandr \
	&& rm -rf /var/lib/apt/lists/*

USER $USER
ADD xinitrc .xinitrc
CMD [ "/usr/bin/startx" ]
