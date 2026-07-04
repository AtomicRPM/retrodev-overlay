EAPI=8

inherit git-r3

DESCRIPTION="SjASMPlus Z80 cross-assembler"
HOMEPAGE="https://github.com/z00m128/sjasmplus"

EGIT_REPO_URI="https://github.com/z00m128/sjasmplus.git"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64"

DEPEND=""
RDEPEND="${DEPEND}"

src_compile() {
    emake -j1
}

src_install() {
    dobin sjasmplus
    dodoc README.md 2>/dev/null
}
