FROM fedora:latest
MAINTAINER Alexander Larsson <alexl@redhat.com>
VOLUME /build
WORKDIR /build
ENV FLATPAK_GL_DRIVERS=dummy
RUN dnf -y update && dnf install -y flatpak-builder ostree fuse elfutils dconf git bzr && dnf clean all
RUN flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
RUN flatpak remote-add --if-not-exists fedora oci+https://registry.fedoraproject.org
RUN flatpak install -y org.freedesktop.Sdk//22.08
RUN flatpak install -y org.freedesktop.Platform//22.08
RUN flatpak install -y org.freedesktop.Sdk.Extension.openjdk17//22.08
RUN flatpak install -y org.gnome.Sdk//43
RUN flatpak install -y org.gnome.Platform//43
