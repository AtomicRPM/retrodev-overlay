EAPI=8

inherit cmake

DESCRIPTION="Xilinx FPGA JTAG programming tool"
HOMEPAGE="https://github.com/matrix-io/xc3sprog"
EGIT_REPO_URI="https://github.com/matrix-io/xc3sprog.git"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64"

DEPEND="
    dev-libs/libusb
    dev-libs/libftdi
    dev-libs/libftdi1
"

RDEPEND="${DEPEND}"

src_configure() {
    cmake_src_configure
}
