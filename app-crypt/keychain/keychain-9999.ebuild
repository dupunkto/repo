EAPI=8

inherit git-r3

DESCRIPTION="GPG passphrase manager"
HOMEPAGE="https://geheimesite.nl"
EGIT_REPO_URI="https://git.dupunkto.org/meta/dotfiles.git"

LICENSE="Unlicense"
SLOT="0"
KEYWORDS="~amd64 ~arm64"

RDEPEND="
	app-misc/shellutils
	app-crypt/gnupg
"
OPTFEATURE="sys-apps/systemd encrypted passphrase storage via systemd-creds"

src_install() {
	newbin bin/keychain keychain
}
