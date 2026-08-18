EAPI=8

inherit git-r3

DESCRIPTION="POSIX shell text utility scripts"
HOMEPAGE="https://geheimesite.nl"
EGIT_REPO_URI="https://git.dupunkto.org/meta/dotfiles.git"

LICENSE="Unlicense"
SLOT="0"
KEYWORDS="-*"

RDEPEND="sys-apps/coreutils sys-apps/shellutils"

src_install() {
	dobin bin/digest bin/lower bin/upper bin/trim bin/sluggify
}
