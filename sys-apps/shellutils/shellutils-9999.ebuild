EAPI=8

inherit git-r3

DESCRIPTION="POSIX shell utility scripts"
HOMEPAGE="https://geheimesite.nl"
EGIT_REPO_URI="https://git.dupunkto.org/meta/dotfiles.git"

LICENSE="Unlicense"
SLOT="0"
KEYWORDS="-*"

src_install() {
	dobin bin/required bin/has bin/prompt bin/err bin/try bin/quiet bin/swallow bin/dotenv
}
