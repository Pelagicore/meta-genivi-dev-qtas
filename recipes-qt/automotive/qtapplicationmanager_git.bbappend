# Make sure QtIVI is built before QtApplicationManager since QtIVI
# provides "geniviextras" for Qt which QtAM uses for DLT-logging
DEPENDS += "qtivi"

SRCREV = "f472ef3662cf0a9bc2bf727c7cef18fd884df5a2"
