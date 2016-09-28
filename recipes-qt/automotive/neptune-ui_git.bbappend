# Add some extra runtime dependencies
RDEPENDS_${PN} += " \
    qtvirtualkeyboard-qmlplugins \
    qtmultimedia-qmlplugins \
    qtwebengine-qmlplugins \
    qt3d-qmlplugins \
"    

SYSTEMD_AUTO_ENABLE = "disable"
FILESEXTRAPATHS_append := ":${THISDIR}/${PN}"
SRC_URI += "file://neptune_user.service"

do_install_append() {
    install -Dm0644 ${WORKDIR}/neptune_user.service ${D}/etc/systemd/user/neptune.service
    mkdir -p ${D}/etc/systemd/user/default.target.wants
    ln -sf /etc/systemd/user/neptune.service ${D}/etc/systemd/user/default.target.wants/neptune.service
}

