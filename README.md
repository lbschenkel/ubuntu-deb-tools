Docker image containing tools to build .deb packages.

Because many tools rely on `chroot` which does not work by default inside
Docker, it is necessary to build/run this image in privileged mode
(`--privileged` switch).

* To build: `build.sh`
* To run: `docker run --privileged -v $(pwd):/mnt ubuntu-deb-tools ...`

