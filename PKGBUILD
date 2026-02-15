# Maintainer: roehistat <mail at iyxeyl.me>

pkgname=critique
pkgver=0.1.104
pkgrel=2
pkgdesc="A beautiful terminal UI for reviewing git diffs with syntax highlighting"
arch=(x86_64)
url="https://github.com/remorses/critique"
license=('MIT')
depends=(git)
makedepends=(bun)
options=('!strip' '!debug')
source=("$pkgname::git+$url.git#tag=$pkgname@$pkgver")
sha256sums=('38623d18747f05c8cda2cec003644fcd7baccbba7d33e7e6ac21fb277c5659c8')

build() {
  cd "$srcdir/$pkgname"
  bun install
  bun build --compile --target=bun-linux-x64-modern ./src/cli.tsx --outfile ./dist/critique
}

package() {
  cd "$srcdir/$pkgname"
  install -Dm755 dist/critique "$pkgdir/usr/bin/critique"
}
