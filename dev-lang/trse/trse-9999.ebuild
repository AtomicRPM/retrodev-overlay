EAPI=8

inherit git-r3 desktop qmake-utils xdg

DESCRIPTION="Turbo Rascal Syntax Error retro IDE/compiler"
HOMEPAGE="https://lemonspawn.com/trse/"
EGIT_REPO_URI="https://github.com/leuat/TRSE.git"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND="
    dev-qt/qtbase:6[gui,widgets,network,opengl]
    dev-qt/qtdeclarative:6
    app-emulation/vice
"

RDEPEND="${DEPEND}"

S="${WORKDIR}/${P}"

src_configure() {
    eqmake6 TRSE.pro
}

src_compile() {
    emake
}

src_install() {
    dobin trse

    insinto /usr/share/${PN}
    doins -r resources

    domenu "${FILESDIR}/trse.desktop"

    dodoc README.md
}
