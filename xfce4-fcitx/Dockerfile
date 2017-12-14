FROM kunst1080/x11-wm:xfce4
MAINTAINER kunst1080 kontrapunkt1080@gmail.com

USER root

RUN apt-get update \
        && DEBIAN_FRONTEND=noninteractive apt-get install -y \
            fcitx-mozc \
            fcitx-tools \
	&& rm -rf /var/lib/apt/lists/*

USER $USER

ENV XMODIFIERS @im=fcitx
ENV QT_IM_MODULE fcitx
ENV GTK_IM_MODULE fcitx
ENV DefaultIMModule fcitx

ADD xinitrc .xinitrc

CMD [ "/usr/bin/startx" ]
