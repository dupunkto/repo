EAPI=8

inherit git-r3

DESCRIPTION="Bash-based Makefile replacement"
HOMEPAGE="https://geheimesite.nl"
EGIT_REPO_URI="https://git.dupunkto.org/meta/dotfiles.git"

LICENSE="Unlicense"
SLOT="0"
KEYWORDS="-*"

RDEPEND="app-misc/shellutils"

src_install() {
	dobin bin/bake
	dosym bake /usr/bin/shake
}
