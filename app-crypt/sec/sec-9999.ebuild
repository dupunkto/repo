EAPI=8

inherit git-r3 optfeature

DESCRIPTION="Password manager written in Bash"
HOMEPAGE="https://geheimesite.nl"
EGIT_REPO_URI="https://git.dupunkto.org/meta/dotfiles.git"

LICENSE="Unlicense"
SLOT="0"
KEYWORDS=""

RDEPEND="
	!app-admin/sec
	app-crypt/gnupg
	dev-vcs/git
	sys-apps/arg
	sys-apps/shellutils
"

src_install() {
	dobin bin/sec bin/secq bin/secv
}

pkg_postinst() {
	optfeature "QR code output" media-gfx/qrencode
	optfeature "TOTP codes" sys-auth/oath-toolkit
	optfeature "clipboard support" gui-apps/wl-clipboard x11-misc/xclip
}
