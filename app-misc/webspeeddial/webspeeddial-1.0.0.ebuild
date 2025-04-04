EAPI=8

CRATES="
	anstyle@1.0.10
	bitflags@2.9.0
	cfg-if@1.0.0
	confy@0.6.1
	directories@5.0.1
	dirs-sys@0.4.1
	downcast@0.11.0
	equivalent@1.0.2
	fragile@2.0.1
	getrandom@0.2.15
	hashbrown@0.15.2
	indexmap@2.8.0
	itoa@1.0.15
	libc@0.2.171
	libredox@0.1.3
	mockall@0.13.1
	mockall_derive@0.13.1
	option-ext@0.2.0
	predicates-core@1.0.9
	predicates-tree@1.0.12
	predicates@3.1.3
	proc-macro2@1.0.94
	quote@1.0.40
	redox_users@0.4.6
	ryu@1.0.20
	serde@1.0.219
	serde_derive@1.0.219
	serde_yaml@0.9.34+deprecated
	syn@2.0.100
	termtree@0.5.1
	thiserror-impl@1.0.69
	thiserror@1.0.69
	unicode-ident@1.0.18
	unsafe-libyaml@0.2.11
	wasi@0.11.0+wasi-snapshot-preview1
	windows-sys@0.48.0
	windows-targets@0.48.5
	windows_aarch64_gnullvm@0.48.5
	windows_aarch64_msvc@0.48.5
	windows_i686_gnu@0.48.5
	windows_i686_msvc@0.48.5
	windows_x86_64_gnu@0.48.5
	windows_x86_64_gnullvm@0.48.5
	windows_x86_64_msvc@0.48.5
"

inherit cargo

DESCRIPTION="A dial system for websites"
HOMEPAGE="https://github.com/LarsZauberer/webspeeddial"
SRC_URI="
	https://github.com/LarsZauberer/webspeeddial/archive/refs/tags/1.0.0.tar.gz
	${CARGO_CRATE_URIS}
"

LICENSE="GPL-3"
# Dependent crate licenses
LICENSE+=" Apache-2.0 MIT MPL-2.0 Unicode-3.0"
SLOT="0"
KEYWORDS="~amd64"

S="${WORKDIR}/${P}"
