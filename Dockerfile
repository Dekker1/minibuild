FROM debian:stable-slim

RUN apt-get update -y && apt-get install -y \
    binutils \
    curl \
    file \
    libcairo2 \
    tzdata \
    unzip

ADD https://github.com/AppImage/AppImageKit/releases/download/continuous/appimagetool-x86_64.AppImage /appimagetool
RUN chmod +x /appimagetool
RUN /appimagetool --appimage-extract
RUN mv /squashfs-root/usr/bin/* /usr/bin/
RUN mv /squashfs-root/usr/lib/* /usr/lib/

RUN rm -r /squashfs-root /appimagetool

ENV TZ=Australia/Melbourne
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone && dpkg-reconfigure -f noninteractive tzdata
