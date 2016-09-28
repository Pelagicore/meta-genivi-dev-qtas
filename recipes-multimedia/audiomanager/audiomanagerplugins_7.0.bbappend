do_install_append() {
	sed -i 's,Source|Sink Input|Entertainment|MediaPlayer|media.role|MEDIA,Source|Sink Input|Entertainment|MediaPlayer|application.process.binary|appman-launcher-qml,g' ${D}/usr/lib/routing/libPluginRoutingInterfacePULSE.conf
}
