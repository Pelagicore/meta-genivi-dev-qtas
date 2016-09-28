# Don't ship the standard GDB UI
IMAGE_INSTALL_remove = "packagegroup-gdp-hmi"

# Ship QtAS reference UI
IMAGE_INSTALL_append = " \
    neptune-ui \
    neptune-app-amm \
    gammaray \
    gstreamer1.0-plugins-good-meta \
    gstreamer1.0-plugins-bad-meta \
    gstreamer1.0-plugins-base-meta \
    gstreamer1.0-plugins-ugly-meta \
    liberation-fonts \
"
