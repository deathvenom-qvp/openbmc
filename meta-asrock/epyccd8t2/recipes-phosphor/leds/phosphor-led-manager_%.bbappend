FILESEXTRAPATHS:prepend:epyccd8t2 := "${THISDIR}/${PN}:"

SRC_URI:append:epyccd8t2 = " file://led-group-config.json"

do_install:append:epyccd8t2() {
        install -m 0644 ${UNPACKDIR}/led-group-config.json ${D}${datadir}/phosphor-led-manager/
}
