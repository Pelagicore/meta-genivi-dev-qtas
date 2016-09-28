DESCRIPTION = "Wrapper for launching GENIVI AudioManager Monitor from neptune-ui"
LICENSE = "LGPLv3"

SRC_URI = " \
    file://start.sh \
    file://info.yaml \
    file://icon.png \
"

do_install() {
    install -Dm0755 ${WORKDIR}/start.sh ${D}/opt/neptune/apps/org.genivi.audiomanagermonitor/start.sh
    install -Dm0644 ${WORKDIR}/info.yaml ${D}/opt/neptune/apps/org.genivi.audiomanagermonitor/info.yaml
    install -Dm0644 ${WORKDIR}/icon.png ${D}/opt/neptune/apps/org.genivi.audiomanagermonitor/icon.png
}

FILES_${PN} += "/opt/neptune/"
