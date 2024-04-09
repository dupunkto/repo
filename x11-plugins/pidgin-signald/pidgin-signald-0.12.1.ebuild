# Copyright 1999-2023 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit git-r3

MY_PN="purple-signald"

DESCRIPTION="Pidgin plugin for WhatsApp (Web), powered by whatsmeow"
HOMEPAGE="https://github.com/hoehermann/${MY_PN}"
EGIT_REPO_URI="https://github.com/hoehermann/${MY_PN}.git"
EGIT_TAG="v${PV}"

LICENSE="GPL-3"
KEYWORDS="~amd64"
SLOT="0"
IUSE="gdk-pixbuf"

DEPEND="net-im/pidgin[gtk] x11-libs/gtk+:2 net-libs/signald 
  gdk-pixbuf? ( >=x11-libs/gdk-pixbuf-2.0 media-libs/webp )
  dev-libs/json-glib"
RDEPEND="${DEPEND}"
BDEPEND="virtual/pkgconfig >=dev-util/cmake-3.8"

RESTRICT="network-sandbox"

src_unpack() {
	git-r3_src_unpack
}

src_prepare() {
	default
	cd "${S}"
	git submodule update --init
	mkdir -p "${S}/build"
}

src_configure() {
	cd "${S}/build"
	cmake -G "Unix Makefiles" .. || die
}

src_compile() {
	cd "${S}/build"
	emake
}

src_install() {
	default
	cd "${S}/build"
	emake DESTDIR="${D}" install/strip
}

