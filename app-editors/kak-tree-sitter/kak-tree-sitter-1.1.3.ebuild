# Copyright 2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

CRATES="
    aho-corasick@1.1.3
    android-tzdata@0.1.1
    android_system_properties@0.1.5
    anstream@0.6.18
    anstyle@1.0.10
    anstyle-parse@0.2.6
    anstyle-query@1.1.2
    anstyle-wincon@3.0.6
    autocfg@1.4.0
    bitflags@2.6.0
    bumpalo@3.16.0
    cc@1.0.106
    cfg-if@1.0.0
    cfg_aliases@0.2.1
    chrono@0.4.38
    clap@4.5.21
    clap_builder@4.5.21
    clap_derive@4.5.18
    clap_lex@0.7.3
    colorchoice@1.0.3
    colored@2.1.0
    core-foundation-sys@0.8.7
    ctrlc@3.4.5
    daemonize@0.5.0
    deranged@0.3.11
    dirs@5.0.1
    dirs-sys@0.4.1
    either@1.13.0
    equivalent@1.0.1
    getrandom@0.2.15
    hashbrown@0.15.1
    heck@0.5.0
    hermit-abi@0.3.9
    iana-time-zone@0.1.61
    iana-time-zone-haiku@0.1.2
    indexmap@2.6.0
    is_terminal_polyfill@1.70.1
    itertools@0.13.0
    itoa@1.0.11
    js-sys@0.3.72
    kak-tree-sitter@1.1.3
    kak-tree-sitter-config@2.2.1
    ktsctl@1.1.2
    lazy_static@1.5.0
    libc@0.2.162
    libloading@0.8.5
    libredox@0.1.3
    log@0.4.22
    memchr@2.7.4
    mio@1.0.2
    nix@0.29.0
    num-conv@0.1.0
    num-traits@0.2.19
    num_threads@0.1.7
    once_cell@1.20.2
    option-ext@0.2.0
    powerfmt@0.2.0
    proc-macro2@1.0.89
    quote@1.0.37
    redox_users@0.4.6
    regex@1.11.1
    regex-automata@0.4.9
    regex-syntax@0.8.5
    ryu@1.0.18
    serde@1.0.215
    serde_derive@1.0.215
    serde_json@1.0.132
    serde_spanned@0.6.8
    simple_logger@5.0.0
    strsim@0.11.1
    syn@2.0.87
    thiserror@1.0.69
    thiserror@2.0.3
    thiserror-impl@1.0.69
    thiserror-impl@2.0.3
    time@0.3.36
    time-core@0.1.2
    time-macros@0.2.18
    toml@0.8.19
    toml_datetime@0.6.8
    toml_edit@0.22.22
    tree-sitter@0.20.10
    tree-sitter-highlight@0.20.1
    tree-sitter-rust@0.20.4
    unicode-ident@1.0.13
    unicode-segmentation@1.12.0
    utf8parse@0.2.2
    uuid@1.11.0
    wasi@0.11.0+wasi-snapshot-preview1
    wasm-bindgen@0.2.95
    wasm-bindgen-backend@0.2.95
    wasm-bindgen-macro@0.2.95
    wasm-bindgen-macro-support@0.2.95
    wasm-bindgen-shared@0.2.95
    windows-core@0.52.0
    windows-sys@0.48.0
    windows-sys@0.52.0
    windows-sys@0.59.0
    windows-targets@0.48.5
    windows-targets@0.52.6
    windows_aarch64_gnullvm@0.48.5
    windows_aarch64_gnullvm@0.52.6
    windows_aarch64_msvc@0.48.5
    windows_aarch64_msvc@0.52.6
    windows_i686_gnu@0.48.5
    windows_i686_gnu@0.52.6
    windows_i686_gnullvm@0.52.6
    windows_i686_msvc@0.48.5
    windows_i686_msvc@0.52.6
    windows_x86_64_gnu@0.48.5
    windows_x86_64_gnu@0.52.6
    windows_x86_64_gnullvm@0.48.5
    windows_x86_64_gnullvm@0.52.6
    windows_x86_64_msvc@0.48.5
    windows_x86_64_msvc@0.52.6
    winnow@0.6.20
"

inherit cargo

RDEPEND="app-editors/ktsctl"

DESCRIPTION="Kakoune Tree Sitter plugin"
HOMEPAGE="https://github.com/kakoune-lsp/kakoune-lsp"
SRC_URI="
	https://git.sr.ht/~hadronized/kak-tree-sitter/archive/${PN}-v${PV}.tar.gz -> ${P}.tar.gz
	${CARGO_CRATE_URIS}
"

LICENSE="|| ( MIT Unlicense )"
# Dependent crate licenses
LICENSE+="
	CC0-1.0 ISC MIT MPL-2.0 Unicode-DFS-2016 ZLIB
	|| ( Apache-2.0 Boost-1.0 )
"
SLOT="0"
KEYWORDS="~amd64"

QA_FLAGS_IGNORED="usr/bin/kak-lsp"

src_install() {
	cargo_src_install
}
