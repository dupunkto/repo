EAPI=8

inherit git-r3 optfeature

DESCRIPTION="Hand a password store over to a phone through a looping QR code"
HOMEPAGE="https://geheimesite.nl"
EGIT_REPO_URI="https://git.dupunkto.org/meta/dotfiles.git"

LICENSE="Unlicense"
SLOT="0"
KEYWORDS=""

RDEPEND="
	app-crypt/gnupg
	dev-vcs/git
	media-gfx/qrencode
	sys-apps/arg
	sys-apps/shellutils
	virtual/openssh
"

src_install() {
	dobin bin/passport
}

pkg_postinst() {
	optfeature "sec store name completion" app-crypt/sec
}
