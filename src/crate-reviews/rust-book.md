
# Rust book

# TODO
* futures
* tokio
* actix
* actix web
* macros
* concurent hash map
* atomic
* mpsc, spmc/broadcast


## Debug and Profile
* https://github.com/japaric/cargo-call-stack
* https://github.com/japaric/stack-sizes
* https://github.com/japaric/rust-san
* https://github.com/flamegraph-rs/flamegraph
* https://blog.anp.lol/rust/2016/07/24/profiling-rust-perf-flamegraph/
* https://gist.github.com/dlaehnemann/df31787c41bd50c0fe223df07cf6eb89
* https://www.worthe-it.co.za/programming/2018/09/23/performance-tuning-in-rust.html
* https://gperftools.github.io/gperftools/heapprofile.html
* https://www.reddit.com/r/rust/comments/fpc5rs/tool_to_record_memory_usage_of_a_process_linux/

## Memory management
* https://github.com/japaric/tlsf
* https://github.com/japaric/volatile-register
* https://github.com/japaric/mat
* https://github.com/robbepop/modular-bitfield
* https://github.com/dzamlo/rust-bitfield
* https://www.jianshu.com/p/511cde6b62a6

## Data structures
* https://github.com/japaric/heapless
* https://github.com/japaric/fpa
* https://channel9.msdn.com/Shows/Going+Deep/Cpp-and-Beyond-2012-Herb-Sutter-atomic-Weapons-1-of-2

## Macros
* https://github.com/nrc/derive-new
* https://github.com/japaric/cargo-call-stack
* https://github.com/DanielKeep/rust-custom-derive

## Error handling
* https://github.com/nrc/box-error
* https://github.com/japaric/panic-never

## Parser
* https://github.com/nrc/zero

## IO
* https://github.com/japaric/nb

## Web
* https://github.com/seanmonstar/warp
* https://github.com/kdy1/rweb/

## Embeded rust
* [The embedonomicon](https://docs.rust-embedded.org/embedonomicon/preface.html)

## Misc
adler32
ahash
aho-corasick
ansi_term
anyhow
app_units
arrayref
arrayvec
ash
atom
atomic
atomic_refcell
atty
audio-mixer
audio_thread_priority
authenticator
autocfg
autocfg-0.1.6
base16
base64
base64-0.10.1
binary-space-partition
bincode
bindgen
binjs_meta
bitflags
bitreader
blake2b_simd
block
block-buffer
block-padding
boxfnonce
build-parallel
bumpalo
byte-tools
bytemuck
byteorder
bytes
bytes-0.4.9
c2-chacha
cast
cc
cexpr
cfg-if
chardetng
chardetng_c
chrono
clang-sys
clap
cloudabi
cmake
cocoa
comedy
constant_time_eq
cookie
copyless
core-foundation
core-foundation-sys
core-graphics
core-text
coreaudio-sys
coreaudio-sys-utils
cose
cose-c
cranelift-bforest
cranelift-codegen
cranelift-codegen-meta
cranelift-codegen-shared
cranelift-entity
cranelift-entity-0.41.0
cranelift-frontend
cranelift-wasm
crc32fast
crossbeam-deque
crossbeam-epoch
crossbeam-queue
crossbeam-utils
crossbeam-utils-0.6.5
cssparser
cssparser-macros
cstr
cstr-macros
cubeb
cubeb-backend
cubeb-core
cubeb-coreaudio
cubeb-pulse
cubeb-sys
d3d12
darling
darling_core
darling_macro
dbus
deflate
derive_more
devd-rs
digest
dirs
dirs-sys
dns-parser
dogear
dtoa
dtoa-short
dwrote
ece
either
encoding_c
encoding_c_mem
encoding_rs
env_logger
error-chain
error-support
euclid
failure
failure_derive
fake-simd
fallible-iterator
fallible-streaming-iterator
ffi-support
filetime_win
flate2
float-cmp
fluent
fluent-bundle
fluent-langneg
fluent-pseudo
fluent-syntax
fnv
foreign-types
freetype
fuchsia-cprng
fuchsia-zircon
fuchsia-zircon-sys
futures
futures-0.1.29
futures-channel
futures-core
futures-cpupool
futures-io
futures-sink
futures-task
futures-util
fxa-client
fxhash
generic-array
getrandom
gfx-auxil
gfx-backend-dx11
gfx-backend-dx12
gfx-backend-empty
gfx-backend-metal
gfx-backend-vulkan
gfx-descriptor
gfx-hal
gfx-memory
gl_generator
gleam
glean-core
glob
glsl
glslopt
goblin
guid_win
h2
hashbrown
hawk
headers
headers-core
hermit-abi
hex
hibitset
http
http-body
httparse
humantime
hyper
id-arena
ident_case
idna
image
indexmap
inflate
Inflector
interrupt-support
intl-memoizer
intl_pluralrules
iovec
itertools
itoa
jobserver
jsparagus
jsparagus-ast
jsparagus-emitter
jsparagus-generated-parser
jsparagus-json-log
jsparagus-parser
jsparagus-scope
jsparagus-stencil
kernel32-sys
khronos_api
lazy_static
lazycell
leb128
libc
libdbus-sys
libloading
libsqlite3-sys
libudev
libz-sys
line-wrap
linked-hash-map
lmdb-rkv
lmdb-rkv-sys
lock_api
log
lru-cache
lucet-module
lucet-runtime
lucet-runtime-internals
lucet-wasi
mach
malloc_buf
malloc_size_of_derive
mapped_hyph
matches
memchr
memmap
memoffset
metal
mime
mime_guess
miniz_oxide
mio
mio-extras
mio-named-pipes
mio-uds
miow
miow-0.2.1
moz_cbor
mp4parse
mp4parse_capi
msdos_time
murmurhash3
neqo-common
neqo-crypto
neqo-http3
neqo-qpack
neqo-transport
net2
new_debug_unreachable
nix
nodrop
nom
nss
nss_build_common
nss_sys
num-bigint
num-derive
num-integer
num-iter
num-rational
num-traits
num_cpus
objc
objc_exception
object
once_cell
opaque-debug
ordered-float
owning_ref
packed_simd
parity-wasm
parking_lot
parking_lot_core
paste
paste-impl
peek-poke
peek-poke-derive
peeking_take_while
percent-encoding
phf
phf_codegen
phf_generator
phf_macros
phf_shared
pin-project
pin-project-internal
pin-project-lite
pin-utils
pkcs11
pkg-config
plain
plane-split
plist
png
podio
ppv-lite86
precomputed-hash
proc-macro-hack
proc-macro2
procedural-masquerade
prost
prost-derive
pulse
pulse-ffi
quick-error
quote
rand
rand_chacha
rand_core
rand_hc
rand_pcg
range-alloc
raw-cpuid
raw-window-handle
rayon
rayon-core
rc_crypto
redox_syscall
redox_termios
redox_users
regalloc
regex
regex-syntax
remove_dir_all
rental
rental-impl
ringbuf
rkv
rkv-0.10.4
rlbox_lucet_sandbox
ron
runloop
rusqlite
rust-argon2
rust-ini
rust_cascade
rustc-demangle
rustc-hash
rustc_version
ryu
safemem
same-file
scoped-tls
scopeguard
scroll
scroll_derive
semver
semver-parser
serde
serde_bytes
serde_derive
serde_json
serde_repr
serde_urlencoded
serde_yaml
sha-1
sha2
shift_or_euc
shift_or_euc_c
shlex
siphasher
slab
smallbitvec
smallvec
socket2
spirv-cross-internal
spirv_cross
sql-support
stable_deref_trait
static_assertions
storage-map
strsim
svg_fmt
syn
sync-guid
sync15
sync15-traits
synstructure
target-lexicon
target-lexicon-0.9.0
tempfile
term_size
termcolor
termion
textwrap
thin-slice
thin-vec
thiserror
thiserror-impl
thread_local
threadbound
time
tinystr
tokio
tokio-0.1.11
tokio-codec
tokio-current-thread
tokio-executor
tokio-fs
tokio-io
tokio-reactor
tokio-tcp
tokio-threadpool
tokio-timer
tokio-udp
tokio-uds
tokio-util
toml
tower-service
tracy-rs
try-lock
type-map
typenum
uluru
unic-char-property
unic-char-range
unic-common
unic-langid
unic-langid-impl
unic-ucd-ident
unic-ucd-version
unicase
unicode-bidi
unicode-normalization
unicode-segmentation
unicode-width
unicode-xid
unreachable
url
urlencoding
uuid
vcpkg
vec_map
version_check
viaduct
void
walkdir
want
warp
wasmparser
wasmparser-0.48.2
wast
wat
webext-storage
webrtc-sdp
weedle
winapi
winapi-0.2.8
winapi-build
winapi-i686-pc-windows-gnu
winapi-util
winapi-x86_64-pc-windows-gnu
wincolor
winreg
wio
ws
ws2_32-sys
x11
xfailure
xml-rs
yaml-rust
zip

## Open source crates
- [ ] actix
- [ ] actix web
- [ ] aho corasick
- [ ] anyhow
- [ ] arc-swap
- [ ] arrayvec
- [ ] async-trait
- [ ] async-channel
- [ ] backtrace-rs
- [ ] bincode: A binary encoder / decoder implementation in Rust.
- [ ] bindgen
- [ ] bit-set
- [ ] bit-vec
- [ ] bitfield
- [ ] bitflags
- [ ] bitreader
- [ ] block-buffer
- [ ] botan
- [ ] bytecodec: A tiny Rust framework for implementing encoders/decoders of byte-oriented protocols
- [ ] bytemuck
- [ ] cbindgen
- [ ] cbitset
- [ ] chrono
- [ ] clap
- [ ] const random
- [ ] copypasta
- [ ] coroutine-rs
- [ ] cpuprofiler
- [ ] criterion
- [ ] criterion
- [ ] crossbeam
- [ ] crossfont
- [ ] cxx
- [ ] darling
- [ ] dash map
- [ ] data encoding
- [ ] DatenLord: DatenLord, Computing Defined Storage, an application-orientated, cloud-native distributed storage system
- [ ] deno
- [ ] deque
- [ ] derivative
- [ ] derive_more
- [ ] directories-next
- [ ] downcast-rs
- [ ] either
- [ ] embeded-hal
- [ ] enum-iterator
- [ ] enumflags2
- [ ] error chain
- [ ] failure
- [ ] flume: A safe and fast multi-producer, multi-consumer channel
- [ ] futures
- [ ] futures channel
- [ ] futures executor
- [ ] futures util
- [ ] gl_generator
- [ ] glutin
- [ ] heck
- [ ] heapless
- [ ] hyper
- [ ] indexmap
- [ ] inflections
- [ ] influxdb_iox: Pronounced (influxdb eye-ox), short for iron oxide. This is the new core of InfluxDB written in Rust on top of Apache Arrow.
- [ ] integer-encoding
- [ ] itertools
- [ ] jobserver
- [ ] likely
- [ ] log-mdc
- [ ] maplit
- [ ] matches
- [ ] memchr
- [ ] memoffset
- [ ] mio
- [ ] mio-extras
- [ ] modular_bitfield
- [ ] neon
- [ ] nibble_vec
- [ ] no panic
- [ ] nom: Rust parser combinator framework
- [ ] ntex
- [ ] num derive
- [ ] num traits
- [ ] num_enum
- [ ] once_cell
- [ ] optimization-engine
- [ ] optional
- [ ] os pipe
- [ ] parking lot
- [ ] pem
- [ ] pin project
- [ ] postage-rs: The feature-rich, portable async channel library
- [ ] pprof-rs
- [ ] pretty assertions
- [ ] proc macro
- [ ] proc-macro-error
- [ ] proc-macro2
- [ ] quick xml
- [ ] quickcheck
- [ ] quote
- [ ] radix trie
- [ ] rayon
- [ ] rust-bindgen
- [ ] rust-musl-builder
- [ ] rust-skia
- [ ] rusty v8
- [ ] ryu
- [ ] semver parser
- [ ] sentry
- [ ] serde
- [ ] serde derive
- [ ] slab
- [ ] slog: Structured, contextual, extensible, composable logging for Rust
- [ ] smallvec
- [ ] smoltcp
- [ ] snafu: Easily assign underlying errors into domain-specific errors while adding context
- [ ] speedy
- [ ] static_assertions
- [ ] startup: Run Rust code "before main"
- [ ] streaming-stats
- [ ] strsim
- [ ] strum: A small rust library for adding custom derives to enums 
- [ ] synstructure
- [ ] takeable-option
- [ ] tantivy: Tantivy is a full-text search engine library inspired by Apache Lucene and written in Rust
- [ ] termion
- [ ] textwrap
- [ ] thiserror
- [ ] thread local
- [ ] tide
- [ ] tinyvec
- [ ] tokio
- [ ] tokio native tls
- [ ] tokio rustls
- [ ] tokio-util
- [ ] tower
- [ ] tower layer
- [ ] tower service
- [ ] tracing
- [ ] trust dns client
- [ ] trust dns server
- [ ] try build
- [ ] typed-arena
- [ ] typemap
- [ ] value-bag
- [ ] vec_map
- [ ] warp: A super-easy, composable, web server framework for warp speeds.
- [ ] wasm-bindgen
- [ ] yasna

### DONE
- [ ] metrohash
- [ ] twox-hash
- [.] getrandom
- [.] redis
- [.] rust-rnum
- [x] ahash: aHash is a non-cryptographic hashing algorithm that uses the AES hardware instruction
- [x] ansi term
- [x] argh
- [x] ash
- [x] atty
- [x] autocfg
- [x] base64
- [x] byteorder
- [x] bytes
- [x] cc
- [x] cfg-if
- [x] cmake
- [x] colored
- [x] compiler builtins
- [x] confy
- [x] cpuid
- [x] cross: “Zero setup” cross compilation and “cross testing” of Rust crates
- [x] ctrlc
- [x] data url
- [x] directories-rs: a mid-level library that provides config/cache/data paths, following the respective conventions on Linux, macOS and Windows
- [x] dirs-rs: a low-level library that provides config/cache/data paths, following the respective conventions on Linux, macOS and Windows
- [x] doc comment
- [x] dotenv
- [x] dtoa
- [x] endian-type
- [x] env logger
- [x] farmhash
- [x] fern: Simple, efficient logging for Rust
- [x] filetime
- [x] flate2
- [x] fnv
- [x] form_urlencoded
- [x] fslock
- [x] fxhash
- [x] get_if_addrs
- [x] getset
- [x] git2
- [x] glob
- [x] hashbrown: Rust port of Google's SwissTable hash map
- [x] hex: A basic crate to encode values to hexadecimal representation. Originally extracted from rustc-serialize.
- [x] humantime
- [x] idna
- [x] image
- [x] imageproc
- [x] itoa
- [x] jemallocator: Rust allocator using jemalloc as a backend
- [x] lazy static
- [x] libc
- [x] libssh2-sys
- [x] log
- [x] log4rs: A highly configurable logging framework for Rust
- [x] md5: MD5 hash function
- [x] memmap: cross-platform Rust API for memory mapped IO
- [x] mime
- [x] nix
- [x] notify
- [x] notify-rust
- [x] num_cpus
- [x] openrr
- [x] paste
- [x] percent encoding
- [x] phone number
- [x] pkg-config
- [x] png
- [x] pretty env logger
- [x] qrcode
- [x] rand
- [x] rcgen
- [x] remove_dir_all
- [x] ring: Safe, fast, small crypto using Rust
- [x] rust-url: URL parser for Rust
- [x] rustc_version
- [x] rustversion
- [x] same-file: A simple crate for determining whether two file paths point to the same file.
- [x] shell escape
- [x] siphash
- [x] socket2
- [x] structopt
- [x] syn: Parser for Rust source code
- [x] sysinfo: A system handler to get information and interact with processes written in Rust
- [x] t1ha
- [x] tempfile
- [x] term
- [x] term_size
- [x] termcolor
- [x] text-size
- [x] thread-id: Get a unique thread ID in Rust
- [x] time
- [x] timer
- [x] tmpdir
- [x] toml
- [x] unicode map
- [x] unicode normalization
- [x] unicode xid
- [x] uuid
- [x] vec-map
- [x] vergen: Generate cargo: instructions at compile time in build scripts for use with the env! macro
- [x] version
- [x] version_check
- [x] walkdir
- [x] wayland-client
- [x] webpki
- [x] webpki roots
- [x] which
- [x] wyhash: wyhash fast portable non-cryptographic hashing algorithm and random number generator in Rust
- [x] x11-dl
- [x] x509-parser
- [x] xdg
- [x] zeroize
