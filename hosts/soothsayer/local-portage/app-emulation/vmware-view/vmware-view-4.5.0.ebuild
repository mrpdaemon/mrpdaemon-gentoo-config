# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

DESCRIPTION=""
HOMEPAGE=""
SRC_URI="http://build-squid.eng.vmware.com/build/storage16/release/bora-297975/publish/VMware-view-client-4.5.0-297975.i386.tar.gz"
FILEDIR="VMware-view-client-4.5.0-297975.i386"

LICENSE=""
SLOT="0"
KEYWORDS="amd64"
IUSE=""

DEPEND=">=app-emulation/vmware-view-pcoip-4.5.0"
RDEPEND="${DEPEND}
         app-emulation/emul-linux-x86-gtklibs"

src_unpack() {
    unpack ${A}
}

src_install() {
    dobin ${WORKDIR}/${FILEDIR}/bin/vmware-view
    dobin ${WORKDIR}/${FILEDIR}/bin/vmware-view-tunnel
    dobin ${WORKDIR}/${FILEDIR}/bin/vmware-view-log-collector
}
