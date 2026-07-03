EAPI=8

inherit cmake git-r3

DESCRIPTION="Xilinx CPLD/FPGA JTAG programmer (XC3SPROG)"
HOMEPAGE="https://github.com/matrix-io/xc3sprog"
EGIT_REPO_URI="https://github.com/matrix-io/xc3sprog.git"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64"

IUSE="ftd2xx"

DEPEND="
    dev-libs/libusb:1
    dev-embedded/libftdi
    ftd2xx? ( dev-embedded/libftd2xx )
"

RDEPEND="${DEPEND}"

src_configure() {
    local mycmakeargs=(
        -DCMAKE_BUILD_TYPE=Release
        -DUSE_WIRINGPI=OFF
    )

    if use ftd2xx; then
        mycmakeargs+=( -DUSE_FTD2XX=ON )
    else
        mycmakeargs+=( -DUSE_FTD2XX=OFF )
    fi

    cmake_src_configure
}

src_install() {
    cmake_src_install
}
