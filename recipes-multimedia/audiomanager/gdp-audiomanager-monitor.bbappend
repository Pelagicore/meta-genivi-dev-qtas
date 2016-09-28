FILESEXTRAPATHS_append := "${THISDIR}/${PN}"

SRC_URI_append += " \
    file://0001-Enable-app-exit-by-clicking-WindRiver-logo.patch \
    file://0002-Make-sd-useable-without-debug.patch \
"
