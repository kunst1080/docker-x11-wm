FROM kunst1080/x11-wm:i3
MAINTAINER kunst1080 kontrapunkt1080@gmail.com

USER root

RUN apt-get update 
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
            im-config \
            fcitx-mozc \
            fcitx \
            fcitx-tools \
            fcitx-config-gtk \
            fcitx-config-gtk2 \
            fcitx-frontend-all \
            fcitx-frontend-gtk2 \
            fcitx-frontend-gtk3 \
            fcitx-frontend-qt4 \
            fcitx-frontend-qt5 \
            fcitx-ui-classic \
            fcitx-ui-light \
            fcitx-ui-qimpanel \
	&& rm -rf /var/lib/apt/lists/*

USER $USER

ENV XMODIFIERS @im=fcitx
ENV QT_IM_MODULE fcitx
ENV GTK_IMMODULE fcitx

RUN sed -i '1s/^/fcitx-autostart\n/' ~/.xinitrc

CMD [ "/usr/bin/startx" ]
