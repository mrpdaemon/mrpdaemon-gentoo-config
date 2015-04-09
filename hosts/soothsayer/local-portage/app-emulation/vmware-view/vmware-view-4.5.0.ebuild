# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

DESCRIPTION=""
HOMEPAGE=""
SRC_URI="http://build-squid.eng.vmware.com/build/storage16/release/bora-297975/publish/VMware-view-client-4.5.0-297975.i386.tar.gz"
FILEDIR="VMware-view-client-4.5.0-297975.i386"
S=${WORKDIR}/$FILEDIR

LICENSE=""
SLOT="0"
KEYWORDS="amd64"
IUSE=""

DEPEND=">=app-emulation/vmware-view-pcoip-4.5.0"
RDEPEND="${DEPEND}
	dev-libs/atk[abi_x86_32(-)]
	x11-libs/gtk+[abi_x86_32(-)]
	x11-libs/gdk-pixbuf[abi_x86_32(-)]
	dev-libs/glib[abi_x86_32(-)]
	dev-libs/libxml2[abi_x86_32(-)]
	dev-libs/openssl[abi_x86_32(-)]
	sys-libs/zlib[abi_x86_32(-)]
	x11-libs/libX11[abi_x86_32(-)]
	x11-libs/pango[abi_x86_32(-)]
	x11-libs/libXrender[abi_x86_32(-)]
	x11-libs/libXi[abi_x86_32(-)]
	x11-libs/libXrandr[abi_x86_32(-)]
	x11-libs/libXcursor[abi_x86_32(-)]
	x11-libs/libXext[abi_x86_32(-)]
	x11-libs/libXcomposite[abi_x86_32(-)]
	x11-libs/libXdamage[abi_x86_32(-)]
	x11-libs/libXfixes[abi_x86_32(-)]
	x11-libs/cairo[abi_x86_32(-)]
	media-libs/fontconfig[abi_x86_32(-)]
	media-libs/freetype[abi_x86_32(-)]
	dev-libs/libffi[abi_x86_32(-)]
	dev-libs/icu[abi_x86_32(-)]
	x11-libs/libxcb[abi_x86_32(-)]
	x11-libs/pixman[abi_x86_32(-)]
	media-libs/libpng[abi_x86_32(-)]
	media-libs/harfbuzz[abi_x86_32(-)]
	dev-libs/expat[abi_x86_32(-)]
	x11-libs/libXau[abi_x86_32(-)]
	x11-libs/libXdmcp[abi_x86_32(-)]
	media-gfx/graphite2[abi_x86_32(-)]"


src_unpack() {
    unpack ${A}
}

src_install() {
    dobin ${WORKDIR}/${FILEDIR}/bin/vmware-view
    dobin ${WORKDIR}/${FILEDIR}/bin/vmware-view-tunnel
    dobin ${WORKDIR}/${FILEDIR}/bin/vmware-view-log-collector
}
