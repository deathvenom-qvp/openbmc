FILESEXTRAPATHS:prepend:romed8hm3 := "${THISDIR}/${PN}:"
FILESEXTRAPATHS:prepend:epyccd8t2 := "${THISDIR}/${PN}:"

SRC_URI:append:romed8hm3 = " file://led-group-config.json"
SRC_URI:append:epyccd8t2 = " file://led-group-config.json"

do_install:append:romed8hm3() {
        install -m 0644 ${UNPACKDIR}/led-group-config.json ${D}${datadir}/phosphor-led-manager/
}

do_install:append:epyccd8t2() {
        install -m 0644 ${UNPACKDIR}/led-group-config.json ${D}${datadir}/phosphor-led-manager/
}
