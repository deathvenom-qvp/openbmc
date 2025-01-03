FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

SRC_URI += " \
    file://power-config-epyccd8t2.json \
    "

do_install:append() {
    install -d  ${D}/${datadir}/${PN}
    install -m 0644 ${UNPACKDIR}/power-config-epyccd8t2.json ${D}/${datadir}/${PN}
}
