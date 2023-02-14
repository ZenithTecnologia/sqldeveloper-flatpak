.PHONY: flatpak

THIS_DIR := $(dir $(abspath $(firstword $(MAKEFILE_LIST))))

podman-build:
	podman build -t sqldeveloper-builder:latest .

flatpak: podman-build
	podman run --rm --name sqldeveloper-builder --privileged -v $(THIS_DIR):/build:z sqldeveloper-builder:latest sh -c "flatpak-builder --disable-rofiles-fuse --disable-cache --force-clean --repo=repo build-dir org.oracle.sqldeveloper.yml"

clean:
	rm -rf build-dir repo
