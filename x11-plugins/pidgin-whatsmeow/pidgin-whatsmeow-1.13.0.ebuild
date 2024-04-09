# Copyright 1999-2023 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit git-r3

MY_PN="purple-gowhatsapp"

DESCRIPTION="Pidgin plugin for WhatsApp (Web), powered by whatsmeow"
HOMEPAGE="https://github.com/hoehermann/${MY_PN}"
EGIT_REPO_URI="https://github.com/hoehermann/${MY_PN}.git"
EGIT_TAG="v${PV}"

LICENSE="GPL-3"
KEYWORDS="~amd64"
SLOT="0"
IUSE="gdk-pixbuf opusfile"

DEPEND="net-im/pidgin[gtk] x11-libs/gtk+:2
  gdk-pixbuf? ( >=x11-libs/gdk-pixbuf-2.0 media-libs/webp )
  opusfile? ( media-libs/opusfile )"
RDEPEND="${DEPEND}"
BDEPEND="virtual/pkgconfig >=dev-util/cmake-3.8 >=dev-lang/go-1.18"

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
	cmake --build . --target download-modules || die "Failed to download go modules"
}

src_compile() {
	cd "${S}/build"
	cmake --build . || die "Compilation failed"
}

src_install() {
	default
	cd "${S}/build"
	emake DESTDIR="${D}" install/strip
}
