# Make sure QtIVI is built before QtApplicationManager since QtIVI
# provides "geniviextras" for Qt which QtAM uses for DLT-logging
DEPENDS += "qtivi"
