# Maintainer: roehistat <mail at iyxeyl.me>

pkgname=critique
pkgver=0.1.123
pkgrel=1
pkgdesc="A beautiful terminal UI for reviewing git diffs with syntax highlighting"
arch=(x86_64)
url="https://github.com/remorses/critique"
license=('MIT')
depends=(bun git)
options=('!strip' '!debug')

source=("$pkgname::git+$url.git#tag=$pkgname@$pkgver" "critique.sh")
sha256sums=('64d44cd727b13f4f25f11fa83995e8f501feaca095be3919426a5cd36cb9934a'
  'da25b3c236a78420d4ae39c1993183d5e6a1ae601a47f3367a2d960034a6397f')

package() {
  cd "$srcdir/$pkgname"
  bun install --frozen-lockfile

  mkdir -p "$pkgdir/usr/lib/critique"
  cp -r . "$pkgdir/usr/lib/critique/"

  install -Dm755 "$srcdir/critique.sh" "$pkgdir/usr/bin/critique"
}
