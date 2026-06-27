EAPI=8

inherit git-r3

DESCRIPTION="Remote deployment manager for containers and static files"
HOMEPAGE="https://geheimesite.nl"
EGIT_REPO_URI="https://git.dupunkto.org/meta/dotfiles.git"

LICENSE="Unlicense"
SLOT="0"
KEYWORDS="-*"

RDEPEND="
	app-misc/shellutils
	app-misc/yq
"

src_install() {
	dobin bin/lift bin/lift-remote
}
