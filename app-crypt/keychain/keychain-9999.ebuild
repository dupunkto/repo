EAPI=8

inherit git-r3 optfeature

DESCRIPTION="GPG passphrase manager"
HOMEPAGE="https://geheimesite.nl"
EGIT_REPO_URI="https://git.dupunkto.org/meta/dotfiles.git"

LICENSE="Unlicense"
SLOT="0"
KEYWORDS="~amd64 ~arm64"

RDEPEND="
	app-crypt/gnupg
	sys-apps/shellutils
"

src_install() {
	newbin bin/keychain keychain
}

pkg_postinst() {
	optfeature "encrypted passphrase storage via systemd-creds" sys-apps/systemd
}
