EAPI=9

inherit git-r3

DESCRIPTION="Z88DK Z80 cross-development kit"
HOMEPAGE="https://www.z88dk.org"

EGIT_REPO_URI="https://github.com/z88dk/z88dk.git"
EGIT_SUBMODULES=( '*' )

LICENSE="Clarified-Artistic"
SLOT="0"
KEYWORDS=""
IUSE="examples test"

RESTRICT="!test? ( test )"

BDEPEND="
	dev-lang/perl
"

src_compile() {
	local args=()

	use examples && args+=( -e )
	use test && args+=( -t )

	./build.sh "${args[@]}" || die "build failed"
}

src_install() {
	emake DESTDIR="${D}" PREFIX="/usr" install

	dodoc README.md
}
