EAPI=8

DESCRIPTION="useless little hello world program"
HOMEPAGE="https://gitea.larszauberer.com/LarsZauberer/${PN}"
SRC_URI="${HOMEPAGE}/archive/${PV}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="amd64"
S="${WORKDIR}/${PN}"

src_install(){
    dobin ebuild-test
}
