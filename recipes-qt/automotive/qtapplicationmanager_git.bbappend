# Make sure QtIVI is built before QtApplicationManager since QtIVI
# provides "geniviextras" for Qt which QtAM uses for DLT-logging
DEPENDS += "qtivi"

SRCREV = "05a6ca178d7d95128a2e0053d06db56a844e4696"
