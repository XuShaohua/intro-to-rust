
build:
	mdbook build

release: build
	rsync --delete -ave 'ssh -p 50022' book/ liulang@biofan.org:/var/www/rust
