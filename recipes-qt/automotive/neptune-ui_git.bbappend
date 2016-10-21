# Add some extra runtime dependencies
RDEPENDS_${PN} += " \
    qtvirtualkeyboard-qmlplugins \
    qtmultimedia-qmlplugins \
    qtwebengine-qmlplugins \
"    

SYSTEMD_AUTO_ENABLE = "disable"
FILESEXTRAPATHS_append := ":${THISDIR}/${PN}"

SRC_URI += "file://neptune_user.service"
SRC_URI_append_porter = " file://am-config.yaml"

SRCREV = "36c8b839bb1da7decebaa2bc7deb0cca04e3f478"

do_install_append() {
    install -Dm0644 ${WORKDIR}/neptune_user.service ${D}/etc/systemd/user/neptune.service
    mkdir -p ${D}/etc/systemd/user/default.target.wants
    mkdir -p ${D}/etc/systemd/system/multi-user.target.wants
    ln -sf /etc/systemd/user/neptune.service ${D}/etc/systemd/user/default.target.wants/neptune.service
    ln -sf /lib/systemd/system/user@.service ${D}/etc/systemd/system/multi-user.target.wants/user@0.service
    mkdir -p ${D}/var/lib/systemd/linger
    touch ${D}/var/lib/systemd/linger/root

    if [ -e ${WORKDIR}/am-config.yaml ]; then
        install -m644 ${WORKDIR}/am-config.yaml ${D}/opt/neptune/am-config.yaml
    fi
}

do_install_prepend() {
    touch ${S}/MainWithCluster.qml
}

