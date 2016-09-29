DESCRIPTION = "Some media for Neptune-UI's MediaPlayer"
HOMEPAGE = "http://www.theshallows.se"
LICENSE = "CC-BY-SA-4.0"

inherit allarch

SRC_URI = "file://music.tar.xz"
S = "${WORKDIR}"
LIC_FILES_CHKSUM = "file://media/music/The_Shallows/Hitchcock_Blondes/LICENSE.txt;md5=e277f2eefa979e093628e4fb368f5044"

do_install() {
	mkdir -p ${D}/home/root/
	cp -r ${WORKDIR}/media ${D}/home/root/
	install -m0644 ${WORKDIR}/media.db ${D}/home/root/media.db
}

FILES_${PN} = "/home/root/"
