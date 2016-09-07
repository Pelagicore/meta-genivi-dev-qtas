# Fix building on hosts with icecc
# Pull request sent upstream:
# https://github.com/GENIVI/meta-genivi-dev/pull/37

EXTRA_OECMAKE += "-Denable_icecc=OFF"
