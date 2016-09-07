# Don't ship the standard GDB UI
IMAGE_INSTALL_remove = "packagegroup-gdp-hmi"

# Ship QtAS reference UI
IMAGE_INSTALL_append = " neptune-ui qtmultimedia-qmlplugins"
