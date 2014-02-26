# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

DESCRIPTION=""
HOMEPAGE=""
SRC_URI="http://build-squid.eng.vmware.com/build/storage16/release/bora-297975/publish/VMware-view-pcoip-e.x.p-297975.tar.gz"
FILEDIR="VMware-view-pcoip-e.x.p-297975"

LICENSE=""
SLOT="0"
KEYWORDS="amd64"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"

src_unpack() {
	unpack ${A}
}

src_install() {
	dobin ${WORKDIR}/${FILEDIR}/bin/vmware-remotemks
	dobin ${WORKDIR}/${FILEDIR}/bin/vmware-remotemks-container


	dolib ${WORKDIR}/${FILEDIR}/lib/libpcoip_client.so
	dolib ${WORKDIR}/${FILEDIR}/lib/libpcoip_crypto.so

	insinto /usr/lib/vmware/xkeymap
	doins ${WORKDIR}/${FILEDIR}/lib/vmware/xkeymap/*

	insinto /usr/lib/pcoip/vchan_plugins
	doins ${WORKDIR}/${FILEDIR}/lib/libmksvchanclient.so
	doins ${WORKDIR}/${FILEDIR}/lib/libscredirvchanclient.so

	echo "SEARCH_DIRS_MASK=\"/usr/lib*/pcoip/vchan_plugins\"" > "${T}/70${PN}" || die
	insinto "/etc/revdep-rebuild" && doins "${T}/70${PN}" || die
}
