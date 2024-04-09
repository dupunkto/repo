# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit go-module

DESCRIPTION="A tool for glamorous shell scripts."
HOMEPAGE="https://github.com/charmbracelet/${PN}"
SRC_URI="https://github.com/charmbracelet/${PN}/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz" 

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="amd64 arm64"

BDEPEND=">=dev-lang/go-1.16"

# This is bad, but I'm to dumb to get the vendor tarball to work.
RESTRICT="strip network-sandbox"

src_compile() {
    ego build
}

src_install() {
    dobin gum

    default
}
