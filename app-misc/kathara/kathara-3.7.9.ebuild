EAPI=8

DESCRIPTION="A lightweight container-based network emulation system."
HOMEPAGE="https://www.kathara.org"
SRC_URI="https://github.com/KatharaFramework/Kathara/releases/download/${PV}/${PN}-3.7.9-1-any.pkg.tar.zst"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64"
S="${WORKDIR}/${PN}"

BDEPEND="
    app-arch/tar
"

RDEPEND="
    app-containers/docker
"

src_unpack(){
    tar xvf ${PN}-3.7.9-1-any.pkg.tar.zst
}

src_install(){
    doins lib/kathara/kathara
}
