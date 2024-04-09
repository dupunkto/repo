# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit go-module

DESCRIPTION="Terminal file manager ."
HOMEPAGE="https://github.com/antonmedv/${PN}"
SRC_URI="https://github.com/antonmedv/${PN}/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz" 

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64"

BDEPEND=">=dev-lang/go-1.16"

# This is bad, but I'm to dumb to get the vendor tarball to work.
RESTRICT="strip network-sandbox"

src_compile() {
    ego build
}

src_install() {
    dobin walk

    default
}
